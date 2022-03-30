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
      document.css("td").each_slice(4) do |col|
        vars = {}
        col_hash = fill_column(col)
        vars = fill_vars(vars, col_hash)
        list << vars
      end
      list
    end

    def fill_column(col)
      { name: col[0].content, type: col[1].content, in: col[2].content, description: col[3].content }
    end

    def fill_vars(vars, col_hash)
      case col_hash[:in]
      when "header"
        vars[:headers] = col_hash
      when "path"
        vars[:path_params] = col_hash
      when "query"
        vars[:query_params] = col_hash
      else
        vars[:other] = col_hash
      end

      vars
    end
  end
end
