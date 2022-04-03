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
      # Class to display Billing result
      class BillingResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class BillingErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Billing endpoints.
      class Billing
        def self.get_github_actions_billing_for_an_organization(org: nil, options: nil)
          new.get_github_actions_billing_for_an_organization(org, options)
        end

        def self.get_github_advanced_security_active_committers_for_an_organization(org: nil, options: nil)
          new.get_github_advanced_security_active_committers_for_an_organization(org, options)
        end

        def self.get_github_packages_billing_for_an_organization(org: nil, options: nil)
          new.get_github_packages_billing_for_an_organization(org, options)
        end

        def self.get_shared_storage_billing_for_an_organization(org: nil, options: nil)
          new.get_shared_storage_billing_for_an_organization(org, options)
        end

        def self.get_github_actions_billing_for_a_user(username: nil, options: nil)
          new.get_github_actions_billing_for_a_user(username, options)
        end

        def self.get_github_packages_billing_for_a_user(username: nil, options: nil)
          new.get_github_packages_billing_for_a_user(username, options)
        end

        def self.get_shared_storage_billing_for_a_user(username: nil, options: nil)
          new.get_shared_storage_billing_for_a_user(username, options)
        end

        private

        # get github actions billing for an organization
        #
        # @param org [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_github_actions_billing_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/settings/billing/actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github advanced security active committers for an organization
        #
        # @param org [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_github_advanced_security_active_committers_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/settings/billing/advanced-security"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github packages billing for an organization
        #
        # @param org [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_github_packages_billing_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/settings/billing/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get shared storage billing for an organization
        #
        # @param org [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_shared_storage_billing_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/settings/billing/shared-storage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions billing for a user
        #
        # @param username [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_github_actions_billing_for_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/settings/billing/actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github packages billing for a user
        #
        # @param username [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_github_packages_billing_for_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/settings/billing/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get shared storage billing for a user
        #
        # @param username [String]
        #
        # @return BillingResult, BillingErrorResult
        def get_shared_storage_billing_for_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/settings/billing/shared-storage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BillingResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BillingErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
