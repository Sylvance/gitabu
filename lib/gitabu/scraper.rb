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

      endpoint_list(document)
    end

    def download_link_page
      Gitabu::HttpClient.call(method: :get, uri: link, expect: :html).result
    end

    def parse(page)
      Nokogiri::HTML(page)
    end

    def endpoint_list(document)
      list = []
      index = 0
      columns = document.css("td")
      endpoints = document.css(".CodeBlock_codeBlock__24GuD")

      document.css("tbody").each.with_index do |var, body_index|
        row_count = var.css("tr").count
        ending = row_count * 4

        row_count.times do |_|
          vars = {}
          params = []

          columns[index...ending].each_slice(4) { |col| params << fill_column(col) }

          vars[:endpoints] = endpoints[body_index].text
          vars[:params] = params
          list << vars
        end
        index = ending
      end
      list
    end

    def fill_column(col)
      {
        field_type: col[2].content,
        fields: { name: col[0].content, type: col[1].content, in: col[2].content, description: col[3].content }
      }
    end
  end
end
