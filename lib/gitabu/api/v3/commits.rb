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
      # Class to display Commits result
      class CommitsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class CommitsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Commits endpoints.
      class Commits
        def self.list_commits(owner: nil, repo: nil, options: nil)
          new.list_commits(owner, repo, options)
        end

        def self.list_branches_for_head_commit(owner: nil, repo: nil, commit_sha: nil, options: nil)
          new.list_branches_for_head_commit(owner, repo, commit_sha, options)
        end

        def self.list_pull_requests_associated_with_a_commit(owner: nil, repo: nil, commit_sha: nil, options: nil)
          new.list_pull_requests_associated_with_a_commit(owner, repo, commit_sha, options)
        end

        def self.get_a_commit(owner: nil, repo: nil, ref: nil, options: nil)
          new.get_a_commit(owner, repo, ref, options)
        end

        def self.compare_two_commits(owner: nil, repo: nil, basehead: nil, options: nil)
          new.compare_two_commits(owner, repo, basehead, options)
        end

        def self.list_commit_comments_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_commit_comments_for_a_repository(owner, repo, options)
        end

        def self.get_a_commit_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.get_a_commit_comment(owner, repo, comment_id, options)
        end

        def self.update_a_commit_comment(owner: nil, repo: nil, comment_id: nil, body: nil, options: nil)
          new.update_a_commit_comment(owner, repo, comment_id, body, options)
        end

        def self.delete_a_commit_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.delete_a_commit_comment(owner, repo, comment_id, options)
        end

        def self.list_commit_comments(owner: nil, repo: nil, commit_sha: nil, options: nil)
          new.list_commit_comments(owner, repo, commit_sha, options)
        end

        def self.create_a_commit_comment(owner: nil, repo: nil, commit_sha: nil, body: nil, path: nil, position: nil, line: nil, options: nil)
          new.create_a_commit_comment(owner, repo, commit_sha, body, path, position, line, options)
        end

        def self.get_the_combined_status_for_a_specific_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.get_the_combined_status_for_a_specific_reference(owner, repo, ref, options)
        end

        def self.list_commit_statuses_for_a_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.list_commit_statuses_for_a_reference(owner, repo, ref, options)
        end

        def self.create_a_commit_status(owner: nil, repo: nil, sha: nil, state: nil, target_url: nil, description: nil, context: nil, options: nil)
          new.create_a_commit_status(owner, repo, sha, state, target_url, description, context, options)
        end

        private

        # list commits
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CommitsResult, CommitsErrorResult
        def list_commits(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sha: options[:sha], path: options[:path], author: options[:author], since: options[:since], until: options[:until], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list branches for head commit
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] commit_sha parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def list_branches_for_head_commit(owner, repo, commit_sha, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{commit_sha}/branches-where-head"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list pull requests associated with a commit
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] commit_sha parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def list_pull_requests_associated_with_a_commit(owner, repo, commit_sha, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{commit_sha}/pulls"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a commit
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def get_a_commit(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # compare two commits
        #
        # @param owner [String]
        # @param repo [String]
        # @param basehead [String] The base branch and head branch to compare. This parameter expects the format {base}...{head}.
        #
        # @return CommitsResult, CommitsErrorResult
        def compare_two_commits(owner, repo, basehead, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/compare/#{basehead}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list commit comments for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CommitsResult, CommitsErrorResult
        def list_commit_comments_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def get_a_commit_comment(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param body [String] Required. The contents of the comment
        #
        # @return CommitsResult, CommitsErrorResult
        def update_a_commit_comment(owner, repo, comment_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def delete_a_commit_comment(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list commit comments
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] commit_sha parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def list_commit_comments(owner, repo, commit_sha, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{commit_sha}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] commit_sha parameter
        # @param body [String] Required. The contents of the comment.
        # @param path [String] Relative path of the file to comment on.
        # @param position [Integer] Line index in the diff to comment on.
        # @param line [Integer] Deprecated. Use position parameter instead. Line number in the file to comment on.
        #
        # @return CommitsResult, CommitsErrorResult
        def create_a_commit_comment(owner, repo, commit_sha, body, path, position, line, _options)
          auth    = nil
          body    = { body: body, path: path, position: position, line: line }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{commit_sha}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the combined status for a specific reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def get_the_combined_status_for_a_specific_reference(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{ref}/status"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list commit statuses for a reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return CommitsResult, CommitsErrorResult
        def list_commit_statuses_for_a_reference(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{ref}/statuses"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a commit status
        #
        # @param owner [String]
        # @param repo [String]
        # @param sha [String]
        # @param state [String] Required. The state of the status. Can be one of error, failure, pending, or success.
        # @param target_url [String] The target URL to associate with this status. This URL will be linked from the GitHub UI to allow users to easily see the source of the status.
        #   For example, if your continuous integration system is posting build status, you would want to provide the deep link for the build output for this specific SHA: http://ci.example.com/user/repo/build/sha
        # @param description [String] A short description of the status.
        # @param context [String] A string label to differentiate this status from the status of other systems. This field is case-insensitive.Default: default
        #
        # @return CommitsResult, CommitsErrorResult
        def create_a_commit_status(owner, repo, sha, state, target_url, description, context, _options)
          auth    = nil
          body    = { state: state, target_url: target_url, description: description, context: context }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/statuses/#{sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CommitsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CommitsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
