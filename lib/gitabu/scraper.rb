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
      rows = document.css("td")
      methods = document.css(".markdown-body pre.CodeBlock_codeBlock__24GuD code span.p-1")
      endpoints = []
      document.css(".markdown-body pre.CodeBlock_codeBlock__24GuD code").select do |code|
        text = code&.content

        next if text.include? "Accept:"
        next if text.include? "await octokit"
        next if text.include? "{\n"
        next if text.include? "curl \\\n"
        next if text.include? "Status:"

        endpoints << code
      end

      document.css("tbody").each.with_index do |var, index|
        table = {}
        row_count = var.css("tr").count

        row_count.times do |count|
          row_name = "row_#{count}"
          table[row_name] = fill_column(rows[0..3])
          rows -= rows[0..3]
        end

        table["method"] = methods[index]&.content
        table["endpoint"] = endpoints[index]&.content
        list << table
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
