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
      # Class to display Metrics result
      class MetricsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class MetricsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Metrics endpoints.
      class Metrics
        def self.get_community_profile_metrics(owner: nil, repo: nil, options: nil)
          new.get_community_profile_metrics(owner, repo, options)
        end

        def self.get_the_weekly_commit_activity(owner: nil, repo: nil, options: nil)
          new.get_the_weekly_commit_activity(owner, repo, options)
        end

        def self.get_the_last_year_of_commit_activity(owner: nil, repo: nil, options: nil)
          new.get_the_last_year_of_commit_activity(owner, repo, options)
        end

        def self.get_all_contributor_commit_activity(owner: nil, repo: nil, options: nil)
          new.get_all_contributor_commit_activity(owner, repo, options)
        end

        def self.get_the_weekly_commit_count(owner: nil, repo: nil, options: nil)
          new.get_the_weekly_commit_count(owner, repo, options)
        end

        def self.get_the_hourly_commit_count_for_each_day(owner: nil, repo: nil, options: nil)
          new.get_the_hourly_commit_count_for_each_day(owner, repo, options)
        end

        def self.get_repository_clones(owner: nil, repo: nil, options: nil)
          new.get_repository_clones(owner, repo, options)
        end

        def self.get_top_referral_paths(owner: nil, repo: nil, options: nil)
          new.get_top_referral_paths(owner, repo, options)
        end

        def self.get_top_referral_sources(owner: nil, repo: nil, options: nil)
          new.get_top_referral_sources(owner, repo, options)
        end

        def self.get_page_views(owner: nil, repo: nil, options: nil)
          new.get_page_views(owner, repo, options)
        end

        private

        # get community profile metrics
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_community_profile_metrics(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/community/profile"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the weekly commit activity
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_the_weekly_commit_activity(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stats/code_frequency"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the last year of commit activity
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_the_last_year_of_commit_activity(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stats/commit_activity"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all contributor commit activity
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_all_contributor_commit_activity(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stats/contributors"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the weekly commit count
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_the_weekly_commit_count(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stats/participation"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the hourly commit count for each day
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_the_hourly_commit_count_for_each_day(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/stats/punch_card"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get repository clones
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_repository_clones(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per: options[:per] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/traffic/clones"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get top referral paths
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_top_referral_paths(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/traffic/popular/paths"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get top referral sources
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_top_referral_sources(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/traffic/popular/referrers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get page views
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MetricsResult, MetricsErrorResult
        def get_page_views(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per: options[:per] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/traffic/views"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MetricsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MetricsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
