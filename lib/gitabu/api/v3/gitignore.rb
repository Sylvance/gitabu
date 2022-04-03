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
      # Class to display Gitignore result
      class GitignoreResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class GitignoreErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Gitignore endpoints.
      class Gitignore
        def self.get_all_gitignore_templates(options: nil)
          new.get_all_gitignore_templates(options)
        end

        def self.get_a_gitignore_template(name: nil, options: nil)
          new.get_a_gitignore_template(name, options)
        end

        private

        # get all gitignore templates
        #
        # @params options [Hash]
        #
        # @return GitignoreResult, GitignoreErrorResult
        def get_all_gitignore_templates(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gitignore/templates"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitignoreResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitignoreErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a gitignore template
        #
        # @param name [String]
        #
        # @return GitignoreResult, GitignoreErrorResult
        def get_a_gitignore_template(name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gitignore/templates/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitignoreResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitignoreErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
