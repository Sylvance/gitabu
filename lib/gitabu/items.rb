# frozen_string_literal: true

# Ruby gem that helps you work with Github API.
module Gitabu
  # Items of Github API documentation that get populated into ruby templates.
  class Items
    attr_accessor :json_spec_result, :version

    def self.items(json_spec_result:, version:)
      new(json_spec_result, version).items
    end

    def initialize(json_spec_result, version)
      @json_spec_result = json_spec_result
      @version          = version
    end

    def items
      collection = []

      json_spec_result.each do |block|
        fields = block.except("namespace_description", "method", "endpoint")
        values = values_from(fields)
        collection << api_hash_for(block, values)
      end

      collection
    end

    def values_from(fields)
      auth             = []
      body             = []
      documentation    = []
      headers          = []
      params           = []
      params_flat      = []
      params_kv        = []
      params_kv_no_nil = []

      fields.each do |_, value|
        auth             << get_auth_from(value)             if value["field_type"] == "auth"
        body             << get_body_from(value)             if value["field_type"] == "body"
        documentation    << get_docu_from(value)             if %w[body path].include?(value["field_type"])
        headers          << get_headers_from(value)          if value["field_type"] == "header"
        params           << get_params_from(value)           if value["field_type"] == "query"
        params_flat      << get_params_flat_from(value)      if %w[body path].include?(value["field_type"])
        params_kv        << get_params_kv_from(value)        if %w[body path].include?(value["field_type"])
        params_kv_no_nil << get_params_kv_no_nil_from(value) if %w[body path].include?(value["field_type"])
      end

      {
        auth: auth, body: body, documentation: documentation, headers: headers,
        params: params, params_flat: params_flat, params_kv: params_kv, params_kv_no_nil: params_kv_no_nil
      }
    end

    def get_auth_from(value)
      "#{value["fields"]["name"]}: #{value["fields"]["name"]}"
    end

    def get_body_from(value)
      "#{value["fields"]["name"]}: #{value["fields"]["name"]}"
    end

    def get_docu_from(value)
      "# @param #{value["fields"]["name"]} [#{value["fields"]["type"].capitalize}] #{value["fields"]["description"]}"
    end

    def get_headers_from(value)
      if value["fields"]["name"] == "accept"
        "#{value["fields"]["name"]}: 'application/vnd.github.v#{version}+json'"
      else
        "#{value["fields"]["name"]}: #{value["fields"]["name"]}"
      end
    end

    def get_params_from(value)
      "#{value["fields"]["name"]}: options[:#{value["fields"]["name"]}]"
    end

    def get_params_flat_from(value)
      value["fields"]["name"].to_s
    end

    def get_params_kv_from(value)
      "#{value["fields"]["name"]}: nil"
    end

    def get_params_kv_no_nil_from(value)
      "#{value["fields"]["name"]}: #{value["fields"]["name"]}"
    end

    def api_hash_for(block, values)
      api_hash = {}
      api_hash["http_method"]                  = block["method"]
      api_hash["endpoint"]                     = block["endpoint"].gsub("{", '#{')
      api_hash["description"]                  = block["namespace_description"].downcase
      api_hash["method_name"]                  = block["namespace_description"].downcase.split(" ").join("_")
      api_hash["auth"]                         = values[:auth].size.zero? ? "nil" : "{ #{values[:auth].join(", ")} }"
      api_hash["body"]                         = values[:body].size.zero? ? "nil" : "{ #{values[:body].join(", ")} }"
      api_hash["documentation"]                = values[:documentation].size.zero? ? "# @params options [Hash]" : values[:documentation].join("\n\t\t\t\t")
      api_hash["headers"]                      = values[:headers].size.zero? ? "nil" : "{ #{values[:headers].join(", ")} }"
      api_hash["params"]                       = values[:params].size.zero? ? "nil" : "{ #{values[:params].join(", ")} }"
      api_hash["path_params_flat"]             = values[:params_flat].size.zero? ? "(options)" : "(#{values[:params_flat].join(", ")}, options)"
      api_hash["params_key_value"]             = values[:params_kv].size.zero? ? "(options: nil)" : "(#{values[:params_kv].join(", ")}, options: nil)"
      api_hash["params_key_value_without_nil"] = values[:params_kv_no_nil].size.zero? ? "options: options)" : "(#{values[:params_kv_no_nil].join(", ")}, options: nil)"
      api_hash
    end
  end
end
