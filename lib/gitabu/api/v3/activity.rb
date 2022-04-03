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
      # Class to display Activity result
      class ActivityResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ActivityErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Activity endpoints.
      class Activity
        def self.list_public_events(options: nil)
          new.list_public_events(options)
        end

        def self.list_public_events_for_a_network_of_repositories(owner: nil, repo: nil, options: nil)
          new.list_public_events_for_a_network_of_repositories(owner, repo, options)
        end

        def self.list_public_organization_events(org: nil, options: nil)
          new.list_public_organization_events(org, options)
        end

        def self.list_repository_events(owner: nil, repo: nil, options: nil)
          new.list_repository_events(owner, repo, options)
        end

        def self.list_events_for_the_authenticated_user(username: nil, options: nil)
          new.list_events_for_the_authenticated_user(username, options)
        end

        def self.list_organization_events_for_the_authenticated_user(username: nil, org: nil, options: nil)
          new.list_organization_events_for_the_authenticated_user(username, org, options)
        end

        def self.list_public_events_for_a_user(username: nil, options: nil)
          new.list_public_events_for_a_user(username, options)
        end

        def self.list_events_received_by_the_authenticated_user(username: nil, options: nil)
          new.list_events_received_by_the_authenticated_user(username, options)
        end

        def self.list_public_events_received_by_a_user(username: nil, options: nil)
          new.list_public_events_received_by_a_user(username, options)
        end

        def self.get_feeds(options: nil)
          new.get_feeds(options)
        end

        def self.list_notifications_for_the_authenticated_user(options: nil)
          new.list_notifications_for_the_authenticated_user(options)
        end

        def self.mark_notifications_as_read(last_read_at: nil, read: nil, options: nil)
          new.mark_notifications_as_read(last_read_at, read, options)
        end

        def self.get_a_thread(thread_id: nil, options: nil)
          new.get_a_thread(thread_id, options)
        end

        def self.mark_a_thread_as_read(thread_id: nil, options: nil)
          new.mark_a_thread_as_read(thread_id, options)
        end

        def self.get_a_thread_subscription_for_the_authenticated_user(thread_id: nil, options: nil)
          new.get_a_thread_subscription_for_the_authenticated_user(thread_id, options)
        end

        def self.set_a_thread_subscription(thread_id: nil, ignored: nil, options: nil)
          new.set_a_thread_subscription(thread_id, ignored, options)
        end

        def self.delete_a_thread_subscription(thread_id: nil, options: nil)
          new.delete_a_thread_subscription(thread_id, options)
        end

        def self.list_repository_notifications_for_the_authenticated_user(owner: nil, repo: nil, options: nil)
          new.list_repository_notifications_for_the_authenticated_user(owner, repo, options)
        end

        def self.mark_repository_notifications_as_read(owner: nil, repo: nil, last_read_at: nil, options: nil)
          new.mark_repository_notifications_as_read(owner, repo, last_read_at, options)
        end

        def self.list_stargazers(owner: nil, repo: nil, options: nil)
          new.list_stargazers(owner, repo, options)
        end

        def self.list_repositories_starred_by_the_authenticated_user(options: nil)
          new.list_repositories_starred_by_the_authenticated_user(options)
        end

        def self.check_if_a_repository_is_starred_by_the_authenticated_user(owner: nil, repo: nil, options: nil)
          new.check_if_a_repository_is_starred_by_the_authenticated_user(owner, repo, options)
        end

        def self.star_a_repository_for_the_authenticated_user(owner: nil, repo: nil, options: nil)
          new.star_a_repository_for_the_authenticated_user(owner, repo, options)
        end

        def self.unstar_a_repository_for_the_authenticated_user(owner: nil, repo: nil, options: nil)
          new.unstar_a_repository_for_the_authenticated_user(owner, repo, options)
        end

        def self.list_repositories_starred_by_a_user(username: nil, options: nil)
          new.list_repositories_starred_by_a_user(username, options)
        end

        def self.list_watchers(owner: nil, repo: nil, options: nil)
          new.list_watchers(owner, repo, options)
        end

        def self.get_a_repository_subscription(owner: nil, repo: nil, options: nil)
          new.get_a_repository_subscription(owner, repo, options)
        end

        def self.set_a_repository_subscription(owner: nil, repo: nil, subscribed: nil, ignored: nil, options: nil)
          new.set_a_repository_subscription(owner, repo, subscribed, ignored, options)
        end

        def self.delete_a_repository_subscription(owner: nil, repo: nil, options: nil)
          new.delete_a_repository_subscription(owner, repo, options)
        end

        def self.list_repositories_watched_by_the_authenticated_user(options: nil)
          new.list_repositories_watched_by_the_authenticated_user(options)
        end

        def self.list_repositories_watched_by_a_user(username: nil, options: nil)
          new.list_repositories_watched_by_a_user(username, options)
        end

        private

        # list public events
        #
        # @params options [Hash]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_public_events(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public events for a network of repositories
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_public_events_for_a_network_of_repositories(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/networks/#{owner}/#{repo}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public organization events
        #
        # @param org [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_public_organization_events(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository events
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repository_events(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list events for the authenticated user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_events_for_the_authenticated_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization events for the authenticated user
        #
        # @param username [String]
        # @param org [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_organization_events_for_the_authenticated_user(username, org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/events/orgs/#{org}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public events for a user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_public_events_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/events/public"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list events received by the authenticated user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_events_received_by_the_authenticated_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/received_events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public events received by a user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_public_events_received_by_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/received_events/public"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get feeds
        #
        # @params options [Hash]
        #
        # @return ActivityResult, ActivityErrorResult
        def get_feeds(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/feeds"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list notifications for the authenticated user
        #
        # @params options [Hash]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_notifications_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { all: options[:all], participating: options[:participating], since: options[:since], before: options[:before], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/notifications"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # mark notifications as read
        #
        # @param last_read_at [String] Describes the last point that notifications were checked.
        # @param read [Boolean] Whether the notification has been read.
        #
        # @return ActivityResult, ActivityErrorResult
        def mark_notifications_as_read(last_read_at, read, _options)
          auth    = nil
          body    = { last_read_at: last_read_at, read: read }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a thread
        #
        # @param thread_id [Integer] thread_id parameter
        #
        # @return ActivityResult, ActivityErrorResult
        def get_a_thread(thread_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications/threads/#{thread_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # mark a thread as read
        #
        # @param thread_id [Integer] thread_id parameter
        #
        # @return ActivityResult, ActivityErrorResult
        def mark_a_thread_as_read(thread_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications/threads/#{thread_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a thread subscription for the authenticated user
        #
        # @param thread_id [Integer] thread_id parameter
        #
        # @return ActivityResult, ActivityErrorResult
        def get_a_thread_subscription_for_the_authenticated_user(thread_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications/threads/#{thread_id}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set a thread subscription
        #
        # @param thread_id [Integer] thread_id parameter
        # @param ignored [Boolean] Whether to block all notifications from a thread.
        #
        # @return ActivityResult, ActivityErrorResult
        def set_a_thread_subscription(thread_id, ignored, _options)
          auth    = nil
          body    = { ignored: ignored }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications/threads/#{thread_id}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a thread subscription
        #
        # @param thread_id [Integer] thread_id parameter
        #
        # @return ActivityResult, ActivityErrorResult
        def delete_a_thread_subscription(thread_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/notifications/threads/#{thread_id}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository notifications for the authenticated user
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repository_notifications_for_the_authenticated_user(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { all: options[:all], participating: options[:participating], since: options[:since], before: options[:before], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/notifications"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # mark repository notifications as read
        #
        # @param owner [String]
        # @param repo [String]
        # @param last_read_at [String] Describes the last point that notifications were checked. Anything updated since this time will not be marked as read. If you omit this parameter, all notifications are marked as read. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ. Default: The current timestamp.
        #
        # @return ActivityResult, ActivityErrorResult
        def mark_repository_notifications_as_read(owner, repo, last_read_at, _options)
          auth    = nil
          body    = { last_read_at: last_read_at }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/notifications"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list stargazers
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_stargazers(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stargazers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories starred by the authenticated user
        #
        # @params options [Hash]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repositories_starred_by_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/starred"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a repository is starred by the authenticated user
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def check_if_a_repository_is_starred_by_the_authenticated_user(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/starred/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # star a repository for the authenticated user
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def star_a_repository_for_the_authenticated_user(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/starred/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unstar a repository for the authenticated user
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def unstar_a_repository_for_the_authenticated_user(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/starred/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories starred by a user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repositories_starred_by_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/starred"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list watchers
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_watchers(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/subscribers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository subscription
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def get_a_repository_subscription(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set a repository subscription
        #
        # @param owner [String]
        # @param repo [String]
        # @param subscribed [Boolean] Determines if notifications should be received from this repository.
        # @param ignored [Boolean] Determines if all notifications should be blocked from this repository.
        #
        # @return ActivityResult, ActivityErrorResult
        def set_a_repository_subscription(owner, repo, subscribed, ignored, _options)
          auth    = nil
          body    = { subscribed: subscribed, ignored: ignored }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository subscription
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def delete_a_repository_subscription(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/subscription"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories watched by the authenticated user
        #
        # @params options [Hash]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repositories_watched_by_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/subscriptions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories watched by a user
        #
        # @param username [String]
        #
        # @return ActivityResult, ActivityErrorResult
        def list_repositories_watched_by_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/subscriptions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActivityResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActivityErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
