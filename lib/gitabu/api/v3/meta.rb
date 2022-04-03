# frozen_string_literal: true

# INFO ON GENERATED CODE
#
# This file is generated.
# See the contribution guide on how to improve the code.
#
# INFO ON GENERATED CODE

# Ruby gem that helps you work with Github API.
module Gitabu
  # API module
  module Api
    # Github Version 3
    module V3
      # Class to display Meta result
      class MetaResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class MetaErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Meta endpoints.
      class Meta
        def self.github_api_root(options: nil)
          new.github_api_root(options)
        end

        def self.get_github_meta_information(options: nil)
          new.get_github_meta_information(options)
        end

        def self.get_octocat(options: nil)
          new.get_octocat(options)
        end

        def self.get_the_zen_of_github(options: nil)
          new.get_the_zen_of_github(options)
        end

        private

        # github api root
        #
        # @params options [Hash]
        #
        # @return MetaResult, MetaErrorResult
        def github_api_root(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetaResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetaErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github meta information
        #
        # @params options [Hash]
        #
        # @return MetaResult, MetaErrorResult
        def get_github_meta_information(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/meta"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetaResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetaErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get octocat
        #
        # @params options [Hash]
        #
        # @return MetaResult, MetaErrorResult
        def get_octocat(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { s: options[:s] }
          uri     = "#{Gitabu::BASE_URL}/octocat"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetaResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetaErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the zen of github
        #
        # @params options [Hash]
        #
        # @return MetaResult, MetaErrorResult
        def get_the_zen_of_github(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/zen"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetaResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetaErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
