# frozen_string_literal: true

require "ostruct"

require_relative "gitabu/client"
require_relative "gitabu/http_client"
require_relative "gitabu/scraper"
require_relative "gitabu/version"

# Ruby gem that helps you work with Github API.
module Gitabu
  class Error < StandardError; end

  BASE_URL = "https://api.github.com/"

  def self.configuration
    @configuration ||= OpenStruct.new(
      version: nil
    )
  end

  def self.configure
    yield(configuration)
  end

  def self.to_ostruct(input)
    result = {}

    if input.is_a?(Hash)
      result["result_type"] = input.class
      result["result_keys"] = input.keys

      input.each do |key, value|
        result[key] = hash_or_array(value) ? to_ostruct(value) : OpenStruct.new(value: value, result_type: value.class)
      end
    end

    if input.is_a?(Array)
      result["result_type"] = input.class
      result["result_array_size"] = input.size

      input.each.with_index do |value, index|
        result["value_at_#{index}"] = hash_or_array(value) ? to_ostruct(value) : OpenStruct.new(value: value, result_type: value.class)
      end
    end

    OpenStruct.new(result)
  end

  def self.hash_or_array(val)
    val.is_a?(Hash) || val.is_a?(Array)
  end
end
