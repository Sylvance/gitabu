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
      # Class to display Interactions result
      class InteractionsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class InteractionsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Interactions endpoints.
      class Interactions
        def self.get_interaction_restrictions_for_an_organization(org: nil, options: nil)
          new.get_interaction_restrictions_for_an_organization(org, options)
        end

        def self.set_interaction_restrictions_for_an_organization(org: nil, limit: nil, expiry: nil, options: nil)
          new.set_interaction_restrictions_for_an_organization(org, limit, expiry, options)
        end

        def self.remove_interaction_restrictions_for_an_organization(org: nil, options: nil)
          new.remove_interaction_restrictions_for_an_organization(org, options)
        end

        def self.get_interaction_restrictions_for_a_repository(owner: nil, repo: nil, options: nil)
          new.get_interaction_restrictions_for_a_repository(owner, repo, options)
        end

        def self.set_interaction_restrictions_for_a_repository(owner: nil, repo: nil, limit: nil, expiry: nil, options: nil)
          new.set_interaction_restrictions_for_a_repository(owner, repo, limit, expiry, options)
        end

        def self.remove_interaction_restrictions_for_a_repository(owner: nil, repo: nil, options: nil)
          new.remove_interaction_restrictions_for_a_repository(owner, repo, options)
        end

        def self.get_interaction_restrictions_for_your_public_repositories(options: nil)
          new.get_interaction_restrictions_for_your_public_repositories(options)
        end

        def self.set_interaction_restrictions_for_your_public_repositories(limit: nil, expiry: nil, options: nil)
          new.set_interaction_restrictions_for_your_public_repositories(limit, expiry, options)
        end

        def self.remove_interaction_restrictions_from_your_public_repositories(options: nil)
          new.remove_interaction_restrictions_from_your_public_repositories(options)
        end

        private

        # get interaction restrictions for an organization
        #
        # @param org [String]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def get_interaction_restrictions_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set interaction restrictions for an organization
        #
        # @param org [String]
        # @param limit [String] Required. The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: existing_users, contributors_only, collaborators_only.
        # @param expiry [String] The duration of the interaction restriction. Can be one of: one_day, three_days, one_week, one_month, six_months. Default: one_day.
        #
        # @return InteractionsResult, InteractionsErrorResult
        def set_interaction_restrictions_for_an_organization(org, limit, expiry, _options)
          auth    = nil
          body    = { limit: limit, expiry: expiry }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove interaction restrictions for an organization
        #
        # @param org [String]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def remove_interaction_restrictions_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get interaction restrictions for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def get_interaction_restrictions_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set interaction restrictions for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param limit [String] Required. The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: existing_users, contributors_only, collaborators_only.
        # @param expiry [String] The duration of the interaction restriction. Can be one of: one_day, three_days, one_week, one_month, six_months. Default: one_day.
        #
        # @return InteractionsResult, InteractionsErrorResult
        def set_interaction_restrictions_for_a_repository(owner, repo, limit, expiry, _options)
          auth    = nil
          body    = { limit: limit, expiry: expiry }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove interaction restrictions for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def remove_interaction_restrictions_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get interaction restrictions for your public repositories
        #
        # @params options [Hash]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def get_interaction_restrictions_for_your_public_repositories(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set interaction restrictions for your public repositories
        #
        # @param limit [String] Required. The type of GitHub user that can comment, open issues, or create pull requests while the interaction limit is in effect. Can be one of: existing_users, contributors_only, collaborators_only.
        # @param expiry [String] The duration of the interaction restriction. Can be one of: one_day, three_days, one_week, one_month, six_months. Default: one_day.
        #
        # @return InteractionsResult, InteractionsErrorResult
        def set_interaction_restrictions_for_your_public_repositories(limit, expiry, _options)
          auth    = nil
          body    = { limit: limit, expiry: expiry }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove interaction restrictions from your public repositories
        #
        # @params options [Hash]
        #
        # @return InteractionsResult, InteractionsErrorResult
        def remove_interaction_restrictions_from_your_public_repositories(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/interaction-limits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            InteractionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            InteractionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
