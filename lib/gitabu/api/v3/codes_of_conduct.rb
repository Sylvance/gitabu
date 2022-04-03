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
      # Class to display Codes_of_conduct result
      class CodesOfConductResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class CodesOfConductErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Codes of conduct endpoints.
      class CodesOfConduct
        def self.get_all_codes_of_conduct(options: nil)
          new.get_all_codes_of_conduct(options)
        end

        def self.get_a_code_of_conduct(key: nil, options: nil)
          new.get_a_code_of_conduct(key, options)
        end

        private

        # get all codes of conduct
        #
        # @params options [Hash]
        #
        # @return CodesOfConductResult, CodesOfConductErrorResult
        def get_all_codes_of_conduct(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/codes_of_conduct"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodesOfConductResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodesOfConductErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a code of conduct
        #
        # @param key [String]
        #
        # @return CodesOfConductResult, CodesOfConductErrorResult
        def get_a_code_of_conduct(key, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/codes_of_conduct/#{key}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodesOfConductResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodesOfConductErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
