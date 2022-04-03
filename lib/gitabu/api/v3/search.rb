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
      # Class to display Search result
      class SearchResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class SearchErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Search endpoints.
      class Search
        def self.search_code(options: nil)
          new.search_code(options)
        end

        def self.search_commits(options: nil)
          new.search_commits(options)
        end

        def self.search_issues_and_pull_requests(options: nil)
          new.search_issues_and_pull_requests(options)
        end

        def self.search_labels(options: nil)
          new.search_labels(options)
        end

        def self.search_repositories(options: nil)
          new.search_repositories(options)
        end

        def self.search_topics(options: nil)
          new.search_topics(options)
        end

        def self.search_users(options: nil)
          new.search_users(options)
        end

        private

        # search code
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_code(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/code"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search commits
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_commits(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/commits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search issues and pull requests
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_issues_and_pull_requests(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search labels
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_labels(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { repository_id: options[:repository_id], q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search repositories
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_repositories(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search topics
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_topics(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/topics"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # search users
        #
        # @params options [Hash]
        #
        # @return SearchResult, SearchErrorResult
        def search_users(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { q: options[:q], sort: options[:sort], order: options[:order], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/search/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            SearchResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            SearchErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
