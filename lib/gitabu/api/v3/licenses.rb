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
      # Class to display Licenses result
      class LicensesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class LicensesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Licenses endpoints.
      class Licenses
        def self.get_all_commonly_used_licenses(options: nil)
          new.get_all_commonly_used_licenses(options)
        end

        def self.get_a_license(license: nil, options: nil)
          new.get_a_license(license, options)
        end

        def self.get_the_license_for_a_repository(owner: nil, repo: nil, options: nil)
          new.get_the_license_for_a_repository(owner, repo, options)
        end

        private

        # get all commonly used licenses
        #
        # @params options [Hash]
        #
        # @return LicensesResult, LicensesErrorResult
        def get_all_commonly_used_licenses(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { featured: options[:featured], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/licenses"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            LicensesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            LicensesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a license
        #
        # @param license [String]
        #
        # @return LicensesResult, LicensesErrorResult
        def get_a_license(license, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/licenses/#{license}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            LicensesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            LicensesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the license for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return LicensesResult, LicensesErrorResult
        def get_the_license_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/license"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            LicensesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            LicensesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
