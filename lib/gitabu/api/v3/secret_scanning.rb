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
      # Class to display Secret scanning result
      class SecretScanningResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class SecretScanningErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Secret scanning endpoints.
      class SecretScanning
        def self.list_secret_scanning_alerts_for_an_enterprise(enterprise: nil, options: nil)
          new.list_secret_scanning_alerts_for_an_enterprise(enterprise, options)
        end

        def self.list_secret_scanning_alerts_for_an_organization(org: nil, options: nil)
          new.list_secret_scanning_alerts_for_an_organization(org, options)
        end

        def self.list_secret_scanning_alerts_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_secret_scanning_alerts_for_a_repository(owner, repo, options)
        end

        def self.get_a_secret_scanning_alert(owner: nil, repo: nil, alert_number: nil, options: nil)
          new.get_a_secret_scanning_alert(owner, repo, alert_number, options)
        end

        def self.update_a_secret_scanning_alert(owner: nil, repo: nil, alert_number: nil, state: nil, resolution: nil, options: nil)
          new.update_a_secret_scanning_alert(owner, repo, alert_number, state, resolution, options)
        end

        def self.list_locations_for_a_secret_scanning_alert(owner: nil, repo: nil, alert_number: nil, options: nil)
          new.list_locations_for_a_secret_scanning_alert(owner, repo, alert_number, options)
        end

        private

        # list secret scanning alerts for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def list_secret_scanning_alerts_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], secret_type: options[:secret_type], resolution: options[:resolution], per_page: options[:per_page], before: options[:before], after: options[:after] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/secret-scanning/alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list secret scanning alerts for an organization
        #
        # @param org [String]
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def list_secret_scanning_alerts_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], secret_type: options[:secret_type], resolution: options[:resolution], page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/secret-scanning/alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list secret scanning alerts for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def list_secret_scanning_alerts_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], secret_type: options[:secret_type], resolution: options[:resolution], page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/secret-scanning/alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a secret scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def get_a_secret_scanning_alert(owner, repo, alert_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/secret-scanning/alerts/#{alert_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a secret scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        # @param state [String] Required. Sets the state of the secret scanning alert. Can be either open or resolved. You must provide resolution when you set the state to resolved.
        # @param resolution [String or null] Required when the state is resolved. The reason for resolving the alert. Can be one of false_positive, wont_fix, revoked, or used_in_tests.
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def update_a_secret_scanning_alert(owner, repo, alert_number, state, resolution, _options)
          auth    = nil
          body    = { state: state, resolution: resolution }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/secret-scanning/alerts/#{alert_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list locations for a secret scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        #
        # @return SecretScanningResult, SecretScanningErrorResult
        def list_locations_for_a_secret_scanning_alert(owner, repo, alert_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/secret-scanning/alerts/#{alert_number}/locations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SecretScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SecretScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
