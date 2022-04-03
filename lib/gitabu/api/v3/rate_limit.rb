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
      # Class to display Rate limit result
      class RateLimitResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class RateLimitErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Rate limit endpoints.
      class RateLimit
        def self.get_rate_limit_status_for_the_authenticated_user(options: nil)
          new.get_rate_limit_status_for_the_authenticated_user(options)
        end

        private

        # get rate limit status for the authenticated user
        #
        # @params options [Hash]
        #
        # @return RateLimitResult, RateLimitErrorResult
        def get_rate_limit_status_for_the_authenticated_user(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/rate_limit"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            RateLimitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            RateLimitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
