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
      # Class to display Apps result
      class AppsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class AppsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Apps endpoints.
      class Apps
        def self.get_the_authenticated_app(options: nil)
          new.get_the_authenticated_app(options)
        end

        def self.create_a_github_app_from_a_manifest(code: nil, options: nil)
          new.create_a_github_app_from_a_manifest(code, options)
        end

        def self.list_installations_for_the_authenticated_app(options: nil)
          new.list_installations_for_the_authenticated_app(options)
        end

        def self.get_an_installation_for_the_authenticated_app(installation_id: nil, options: nil)
          new.get_an_installation_for_the_authenticated_app(installation_id, options)
        end

        def self.delete_an_installation_for_the_authenticated_app(installation_id: nil, options: nil)
          new.delete_an_installation_for_the_authenticated_app(installation_id, options)
        end

        def self.create_an_installation_access_token_for_an_app(installation_id: nil, repositories: nil, repository_ids: nil, permissions: nil, options: nil)
          new.create_an_installation_access_token_for_an_app(installation_id, repositories, repository_ids, permissions, options)
        end

        def self.suspend_an_app_installation(installation_id: nil, options: nil)
          new.suspend_an_app_installation(installation_id, options)
        end

        def self.unsuspend_an_app_installation(installation_id: nil, options: nil)
          new.unsuspend_an_app_installation(installation_id, options)
        end

        def self.get_an_app(app_slug: nil, options: nil)
          new.get_an_app(app_slug, options)
        end

        def self.get_an_organization_installation_for_the_authenticated_app(org: nil, options: nil)
          new.get_an_organization_installation_for_the_authenticated_app(org, options)
        end

        def self.get_a_repository_installation_for_the_authenticated_app(owner: nil, repo: nil, options: nil)
          new.get_a_repository_installation_for_the_authenticated_app(owner, repo, options)
        end

        def self.get_a_user_installation_for_the_authenticated_app(username: nil, options: nil)
          new.get_a_user_installation_for_the_authenticated_app(username, options)
        end

        def self.list_repositories_accessible_to_the_app_installation(options: nil)
          new.list_repositories_accessible_to_the_app_installation(options)
        end

        def self.revoke_an_installation_access_token(options: nil)
          new.revoke_an_installation_access_token(options)
        end

        def self.list_app_installations_accessible_to_the_user_access_token(options: nil)
          new.list_app_installations_accessible_to_the_user_access_token(options)
        end

        def self.list_repositories_accessible_to_the_user_access_token(installation_id: nil, options: nil)
          new.list_repositories_accessible_to_the_user_access_token(installation_id, options)
        end

        def self.add_a_repository_to_an_app_installation(installation_id: nil, repository_id: nil, options: nil)
          new.add_a_repository_to_an_app_installation(installation_id, repository_id, options)
        end

        def self.remove_a_repository_from_an_app_installation(installation_id: nil, repository_id: nil, options: nil)
          new.remove_a_repository_from_an_app_installation(installation_id, repository_id, options)
        end

        def self.get_a_subscription_plan_for_an_account(account_id: nil, options: nil)
          new.get_a_subscription_plan_for_an_account(account_id, options)
        end

        def self.list_plans(options: nil)
          new.list_plans(options)
        end

        def self.list_accounts_for_a_plan(plan_id: nil, options: nil)
          new.list_accounts_for_a_plan(plan_id, options)
        end

        def self.get_a_subscription_plan_for_an_account_stubbed(account_id: nil, options: nil)
          new.get_a_subscription_plan_for_an_account_stubbed(account_id, options)
        end

        def self.list_plans_stubbed(options: nil)
          new.list_plans_stubbed(options)
        end

        def self.list_accounts_for_a_plan_stubbed(plan_id: nil, options: nil)
          new.list_accounts_for_a_plan_stubbed(plan_id, options)
        end

        def self.list_subscriptions_for_the_authenticated_user(options: nil)
          new.list_subscriptions_for_the_authenticated_user(options)
        end

        def self.list_subscriptions_for_the_authenticated_user_stubbed(options: nil)
          new.list_subscriptions_for_the_authenticated_user_stubbed(options)
        end

        def self.delete_an_app_authorization(client_id: nil, access_token: nil, options: nil)
          new.delete_an_app_authorization(client_id, access_token, options)
        end

        def self.check_a_token(client_id: nil, access_token: nil, options: nil)
          new.check_a_token(client_id, access_token, options)
        end

        def self.reset_a_token(client_id: nil, access_token: nil, options: nil)
          new.reset_a_token(client_id, access_token, options)
        end

        def self.delete_an_app_token(client_id: nil, access_token: nil, options: nil)
          new.delete_an_app_token(client_id, access_token, options)
        end

        def self.create_a_scoped_access_token(client_id: nil, access_token: nil, target: nil, target_id: nil, repositories: nil, repository_ids: nil, permissions: nil, options: nil)
          new.create_a_scoped_access_token(client_id, access_token, target, target_id, repositories, repository_ids, permissions, options)
        end

        def self.get_a_webhook_configuration_for_an_app(options: nil)
          new.get_a_webhook_configuration_for_an_app(options)
        end

        def self.update_a_webhook_configuration_for_an_app(url: nil, content_type: nil, secret: nil, insecure_ssl: nil, options: nil)
          new.update_a_webhook_configuration_for_an_app(url, content_type, secret, insecure_ssl, options)
        end

        def self.list_deliveries_for_an_app_webhook(options: nil)
          new.list_deliveries_for_an_app_webhook(options)
        end

        def self.get_a_delivery_for_an_app_webhook(delivery_id: nil, options: nil)
          new.get_a_delivery_for_an_app_webhook(delivery_id, options)
        end

        def self.redeliver_a_delivery_for_an_app_webhook(delivery_id: nil, options: nil)
          new.redeliver_a_delivery_for_an_app_webhook(delivery_id, options)
        end

        private

        # get the authenticated app
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def get_the_authenticated_app(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a github app from a manifest
        #
        # @param code [String]
        #
        # @return AppsResult, AppsErrorResult
        def create_a_github_app_from_a_manifest(code, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app-manifests/#{code}/conversions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list installations for the authenticated app
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_installations_for_the_authenticated_app(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page], since: options[:since], outdated: options[:outdated] }
          uri     = "#{Gitabu::BASE_URL}/app/installations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an installation for the authenticated app
        #
        # @param installation_id [Integer] installation_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def get_an_installation_for_the_authenticated_app(installation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/installations/#{installation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an installation for the authenticated app
        #
        # @param installation_id [Integer] installation_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def delete_an_installation_for_the_authenticated_app(installation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/installations/#{installation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an installation access token for an app
        #
        # @param installation_id [Integer] installation_id parameter
        # @param repositories [Array of strings] List of repository names that the token should have access to
        # @param repository_ids [Array of integers] List of repository IDs that the token should have access to
        # @param permissions [Object] The permissions granted to the user-to-server access token.
        #
        # @return AppsResult, AppsErrorResult
        def create_an_installation_access_token_for_an_app(installation_id, repositories, repository_ids, permissions, _options)
          auth    = nil
          body    = { repositories: repositories, repository_ids: repository_ids, permissions: permissions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/installations/#{installation_id}/access_tokens"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # suspend an app installation
        #
        # @param installation_id [Integer] installation_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def suspend_an_app_installation(installation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/installations/#{installation_id}/suspended"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unsuspend an app installation
        #
        # @param installation_id [Integer] installation_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def unsuspend_an_app_installation(installation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/installations/#{installation_id}/suspended"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an app
        #
        # @param app_slug [String]
        #
        # @return AppsResult, AppsErrorResult
        def get_an_app(app_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/apps/#{app_slug}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization installation for the authenticated app
        #
        # @param org [String]
        #
        # @return AppsResult, AppsErrorResult
        def get_an_organization_installation_for_the_authenticated_app(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/installation"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository installation for the authenticated app
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return AppsResult, AppsErrorResult
        def get_a_repository_installation_for_the_authenticated_app(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/installation"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a user installation for the authenticated app
        #
        # @param username [String]
        #
        # @return AppsResult, AppsErrorResult
        def get_a_user_installation_for_the_authenticated_app(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/installation"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories accessible to the app installation
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_repositories_accessible_to_the_app_installation(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/installation/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # revoke an installation access token
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def revoke_an_installation_access_token(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/installation/token"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list app installations accessible to the user access token
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_app_installations_accessible_to_the_user_access_token(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/installations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories accessible to the user access token
        #
        # @param installation_id [Integer] installation_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def list_repositories_accessible_to_the_user_access_token(installation_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/installations/#{installation_id}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add a repository to an app installation
        #
        # @param installation_id [Integer] installation_id parameter
        # @param repository_id [Integer]
        #
        # @return AppsResult, AppsErrorResult
        def add_a_repository_to_an_app_installation(installation_id, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/installations/#{installation_id}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a repository from an app installation
        #
        # @param installation_id [Integer] installation_id parameter
        # @param repository_id [Integer]
        #
        # @return AppsResult, AppsErrorResult
        def remove_a_repository_from_an_app_installation(installation_id, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/installations/#{installation_id}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a subscription plan for an account
        #
        # @param account_id [Integer] account_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def get_a_subscription_plan_for_an_account(account_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/accounts/#{account_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list plans
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_plans(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/plans"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list accounts for a plan
        #
        # @param plan_id [Integer] plan_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def list_accounts_for_a_plan(plan_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/plans/#{plan_id}/accounts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a subscription plan for an account (stubbed)
        #
        # @param account_id [Integer] account_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def get_a_subscription_plan_for_an_account_stubbed(account_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/stubbed/accounts/#{account_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list plans (stubbed)
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_plans_stubbed(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/stubbed/plans"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list accounts for a plan (stubbed)
        #
        # @param plan_id [Integer] plan_id parameter
        #
        # @return AppsResult, AppsErrorResult
        def list_accounts_for_a_plan_stubbed(plan_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/marketplace_listing/stubbed/plans/#{plan_id}/accounts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list subscriptions for the authenticated user
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_subscriptions_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/marketplace_purchases"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list subscriptions for the authenticated user (stubbed)
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_subscriptions_for_the_authenticated_user_stubbed(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/marketplace_purchases/stubbed"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an app authorization
        #
        # @param client_id [String] The client ID of your GitHub app.
        # @param access_token [String] Required. The OAuth access token used to authenticate to the GitHub API.
        #
        # @return AppsResult, AppsErrorResult
        def delete_an_app_authorization(client_id, access_token, _options)
          auth    = nil
          body    = { access_token: access_token }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/applications/#{client_id}/grant"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check a token
        #
        # @param client_id [String] The client ID of your GitHub app.
        # @param access_token [String] Required. The access_token of the OAuth application.
        #
        # @return AppsResult, AppsErrorResult
        def check_a_token(client_id, access_token, _options)
          auth    = nil
          body    = { access_token: access_token }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/applications/#{client_id}/token"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # reset a token
        #
        # @param client_id [String] The client ID of your GitHub app.
        # @param access_token [String] Required. The access_token of the OAuth application.
        #
        # @return AppsResult, AppsErrorResult
        def reset_a_token(client_id, access_token, _options)
          auth    = nil
          body    = { access_token: access_token }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/applications/#{client_id}/token"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an app token
        #
        # @param client_id [String] The client ID of your GitHub app.
        # @param access_token [String] Required. The OAuth access token used to authenticate to the GitHub API.
        #
        # @return AppsResult, AppsErrorResult
        def delete_an_app_token(client_id, access_token, _options)
          auth    = nil
          body    = { access_token: access_token }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/applications/#{client_id}/token"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a scoped access token
        #
        # @param client_id [String] The client ID of your GitHub app.
        # @param access_token [String] Required. The OAuth access token used to authenticate to the GitHub API.
        # @param target [String] The name of the user or organization to scope the user-to-server access token to. Required unless target_id is specified.
        # @param target_id [Integer] The ID of the user or organization to scope the user-to-server access token to. Required unless target is specified.
        # @param repositories [Array of strings] The list of repository names to scope the user-to-server access token to. repositories may not be specified if repository_ids is specified.
        # @param repository_ids [Array of integers] The list of repository IDs to scope the user-to-server access token to. repository_ids may not be specified if repositories is specified.
        # @param permissions [Object] The permissions granted to the user-to-server access token.
        #
        # @return AppsResult, AppsErrorResult
        def create_a_scoped_access_token(client_id, access_token, target, target_id, repositories, repository_ids, permissions, _options)
          auth    = nil
          body    = { access_token: access_token, target: target, target_id: target_id, repositories: repositories, repository_ids: repository_ids, permissions: permissions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/applications/#{client_id}/token/scoped"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a webhook configuration for an app
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def get_a_webhook_configuration_for_an_app(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/hook/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a webhook configuration for an app
        #
        # @param url [String] The URL to which the payloads will be delivered.
        # @param content_type [String] The media type used to serialize the payloads. Supported values include json and form. The default is form.
        # @param secret [String] If provided, the secret will be used as the key to generate the HMAC hex digest value for delivery signature headers.
        # @param insecure_ssl [String or number or ] Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
        #
        # @return AppsResult, AppsErrorResult
        def update_a_webhook_configuration_for_an_app(url, content_type, secret, insecure_ssl, _options)
          auth    = nil
          body    = { url: url, content_type: content_type, secret: secret, insecure_ssl: insecure_ssl }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/hook/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list deliveries for an app webhook
        #
        # @params options [Hash]
        #
        # @return AppsResult, AppsErrorResult
        def list_deliveries_for_an_app_webhook(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], cursor: options[:cursor] }
          uri     = "#{Gitabu::BASE_URL}/app/hook/deliveries"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a delivery for an app webhook
        #
        # @param delivery_id [Integer]
        #
        # @return AppsResult, AppsErrorResult
        def get_a_delivery_for_an_app_webhook(delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/hook/deliveries/#{delivery_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # redeliver a delivery for an app webhook
        #
        # @param delivery_id [Integer]
        #
        # @return AppsResult, AppsErrorResult
        def redeliver_a_delivery_for_an_app_webhook(delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/app/hook/deliveries/#{delivery_id}/attempts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            AppsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            AppsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
