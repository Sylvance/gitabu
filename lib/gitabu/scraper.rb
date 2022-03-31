# frozen_string_literal: true

require "fileutils"
require "json"
require "nokogiri"
require "ostruct"

require_relative "http_client"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Scraper that gets link to Github API and returns endpoints as variables.
  class Scraper
    attr_accessor :link, :name

    def self.scrape(link:, name:)
      new(link, name).scrape
    end

    def initialize(link, name)
      @link = link
      @name = name
    end

    def scrape
      hash = { result: list }

      FileUtils.touch("lib/gitabu/public/#{name}.json")
      File.open("lib/gitabu/public/#{name}.json", "w") do |f|
        f.write(JSON.pretty_generate(hash))
      end
    end

    private

    def list
      page = download_link_page
      document = parse(page)

      table_list(document)
    end

    def download_link_page
      Gitabu::HttpClient.call(method: :get, uri: link, expect: :html).result
    end

    def parse(page)
      Nokogiri::HTML(page)
    end

    def table_list(document)
      list = []
      namespace = "/html/body/div/div/div[2]/main/div/div[4]/div"
      namespace_count = document.xpath(namespace).size
      namespace_count.times do |namespace_index|
        block_count = document.xpath("#{namespace}[#{namespace_index + 1}]/div").size
        block_count.times do |block_index|
          next if block_index.zero?

          table = {}
          table["namespace_description"] = document.xpath("#{namespace}[#{namespace_index + 1}]/div[#{block_index + 1}]/h3/text()")
          table["method"] = document.xpath("#{namespace}[#{namespace_index + 1}]/div[#{block_index + 1}]/div/pre/code/span/text()")
          endpoint = document.xpath("#{namespace}[#{namespace_index + 1}]/div[#{block_index + 1}]/div/pre/code")[0]&.text
          table["endpoint"] = endpoint.gsub("#{table["method"]} ", "")
          row_count = document.xpath("#{namespace}[#{namespace_index + 1}]/div[#{block_index + 1}]/table[1]/tbody/tr").size
          row_count.times do |row_index|
            col = document.xpath("#{namespace}[#{namespace_index + 1}]/div[#{block_index + 1}]/table[1]/tbody/tr[#{row_index + 1}]/td")
            row_name = "field_#{row_index}"
            table[row_name] = fill_column(col)
          end
          list << table
        end
      end
      list
    end

    def fill_column(col)
      {
        field_type: col[2]&.content,
        fields: { name: col[0]&.content, type: col[1]&.content, in: col[2]&.content, description: col[3]&.content }
      }
    end
  end
end
