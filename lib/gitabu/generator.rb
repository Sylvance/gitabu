# frozen_string_literal: true

require "json"
require "fileutils"

require_relative "builder"
require_relative "items"
require_relative "scraper"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Http client that acts as a middleman to the API.
  class Generator
    attr_accessor :link, :name, :version

    def self.generate(link:, name:, version:)
      new(link, name, version).generate
    end

    def initialize(link, name, version)
      @link     = link
      @name     = name
      @version  = version
    end

    def generate
      generate_json_spec
      generate_api_class
    end

    private

    def generate_json_spec
      Gitabu::Scraper.scrape(link: link, name: name, version: version)
    end

    def generate_api_class
      Gitabu::Builder.save(
        class_name: name.capitalize, items: items, target: ruby_file, template: template, version: version
      )
    end

    def items
      Gitabu::Items.items(json_spec_result: json_spec_result, version: version)
    end

    def ruby_file
      dir  = "/#{spec.gem_dir}/lib/gitabu/api/v#{version}"
      path = "#{dir}/#{name}.rb"
      FileUtils.mkdir_p(dir)
      path
    end

    def template
      File.read(erb_file)
    end

    def json_spec_result
      data = JSON.parse(File.read(json_spec))
      data["result"]
    end

    def erb_file
      "/#{spec.gem_dir}/lib/gitabu/templates/template.rb.erb"
    end

    def json_spec
      "/#{spec.gem_dir}/lib/gitabu/public/api/v#{version}/#{name}.json"
    end

    def spec
      Gem::Specification.find_by_name("gitabu")
    end
  end
end
