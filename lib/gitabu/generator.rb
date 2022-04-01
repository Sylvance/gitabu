# frozen_string_literal: true

require "erb"
require "json"

require_relative "builder"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Http client that acts as a middleman to the API.
  class Generator
    attr_accessor :klass, :link, :name

    def self.generate(klass:, link:, name:)
      new(klass, link, name).generate
    end

    def initialize(klass, link, name)
      @klass = klass
      @link  = link
      @name  = name
    end

    def generate
      generate_json_spec
      generate_api_class
      generate_api_client
    end

    private

    def generate_json_spec
      Gitabu::Scraper.scrape(link: link, name: name)
    end

    def generate_api_class
      Gitabu::Builder.save(items: items, target: ruby_file, template: template)
    end

    def generate_api_client
      Gitabu::Builder.save(items: items, target: client_ruby_file, template: client_template)
    end

    def items
      collection = []

      json_spec_result.each do |block|
        api_hash = {}

        fields = block.except("namespace_description", "method", "endpoint")

        api_hash["method"]      = block["method"]
        api_hash["endpoint"]    = block["endpoint"]
        api_hash["description"] = block["namespace_description"]

        auth    = []
        body    = []
        headers = []
        path    = []
        params  = []

        fields.each do |_, value|
          auth    << "#{value["name"]}: #{value["name"]}" if value["field_type"] == "auth"
          body    << "#{value["name"]}: #{value["name"]}" if value["field_type"] == "body"
          headers << "#{value["name"]}: #{value["name"]}" if value["field_type"] == "header"
          path    << "#{value["name"]}: #{value["name"]}" if value["field_type"] == "path"
          params  << "#{value["name"]}: #{value["name"]}" if value["field_type"] == "query"
        end

        api_hash["auth"]    = body
        api_hash["body"]    = body
        api_hash["headers"] = headers
        api_hash["path"]    = path
        api_hash["params"]  = params

        collection << api_hash
      end

      collection
    end

    def ruby_file
      File.basename(erb_file, ".erb")
    end

    def client_ruby_file
      File.basename(client_erb_file, ".erb")
    end

    def template
      File.read(erb_file)
    end

    def client_template
      File.read(client_erb_file)
    end

    def json_spec_result
      data = JSON.parse(File.read(json_spec))
      data["result"]
    end

    def erb_file
      "/#{spec.gem_dir}/lib/gitabu/templates/template.rb.erb"
    end

    def client_erb_file
      "/#{spec.gem_dir}/lib/gitabu/templates/client.rb.erb"
    end

    def json_spec
      "/#{spec.gem_dir}/lib/gitabu/public/#{name}.json"
    end

    def spec
      Gem::Specification.find_by_name("gitabu")
    end
  end
end
