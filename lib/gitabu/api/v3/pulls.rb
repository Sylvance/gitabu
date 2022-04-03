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
      # Class to display Pulls result
      class PullsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class PullsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Pulls endpoints.
      class Pulls
        def self.list_pull_requests(owner: nil, repo: nil, options: nil)
          new.list_pull_requests(owner, repo, options)
        end

        def self.create_a_pull_request(owner: nil, repo: nil, title: nil, head: nil, base: nil, body: nil, maintainer_can_modify: nil, draft: nil, issue: nil, options: nil)
          new.create_a_pull_request(owner, repo, title, head, base, body, maintainer_can_modify, draft, issue, options)
        end

        def self.get_a_pull_request(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.get_a_pull_request(owner, repo, pull_number, options)
        end

        def self.update_a_pull_request(owner: nil, repo: nil, pull_number: nil, title: nil, body: nil, state: nil, base: nil, maintainer_can_modify: nil, options: nil)
          new.update_a_pull_request(owner, repo, pull_number, title, body, state, base, maintainer_can_modify, options)
        end

        def self.list_commits_on_a_pull_request(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.list_commits_on_a_pull_request(owner, repo, pull_number, options)
        end

        def self.list_pull_requests_files(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.list_pull_requests_files(owner, repo, pull_number, options)
        end

        def self.check_if_a_pull_request_has_been_merged(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.check_if_a_pull_request_has_been_merged(owner, repo, pull_number, options)
        end

        def self.merge_a_pull_request(owner: nil, repo: nil, pull_number: nil, commit_title: nil, commit_message: nil, sha: nil, merge_method: nil, options: nil)
          new.merge_a_pull_request(owner, repo, pull_number, commit_title, commit_message, sha, merge_method, options)
        end

        def self.update_a_pull_request_branch(owner: nil, repo: nil, pull_number: nil, expected_head_sha: nil, options: nil)
          new.update_a_pull_request_branch(owner, repo, pull_number, expected_head_sha, options)
        end

        def self.list_review_comments_in_a_repository(owner: nil, repo: nil, options: nil)
          new.list_review_comments_in_a_repository(owner, repo, options)
        end

        def self.get_a_review_comment_for_a_pull_request(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.get_a_review_comment_for_a_pull_request(owner, repo, comment_id, options)
        end

        def self.update_a_review_comment_for_a_pull_request(owner: nil, repo: nil, comment_id: nil, body: nil, options: nil)
          new.update_a_review_comment_for_a_pull_request(owner, repo, comment_id, body, options)
        end

        def self.delete_a_review_comment_for_a_pull_request(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.delete_a_review_comment_for_a_pull_request(owner, repo, comment_id, options)
        end

        def self.list_review_comments_on_a_pull_request(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.list_review_comments_on_a_pull_request(owner, repo, pull_number, options)
        end

        def self.create_a_review_comment_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, body: nil, commit_id: nil, path: nil, position: nil, side: nil, line: nil, start_line: nil, start_side: nil, in_reply_to: nil, options: nil)
          new.create_a_review_comment_for_a_pull_request(owner, repo, pull_number, body, commit_id, path, position, side, line, start_line, start_side, in_reply_to, options)
        end

        def self.create_a_reply_for_a_review_comment(owner: nil, repo: nil, pull_number: nil, comment_id: nil, body: nil, options: nil)
          new.create_a_reply_for_a_review_comment(owner, repo, pull_number, comment_id, body, options)
        end

        def self.list_requested_reviewers_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.list_requested_reviewers_for_a_pull_request(owner, repo, pull_number, options)
        end

        def self.request_reviewers_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, reviewers: nil, team_reviewers: nil, options: nil)
          new.request_reviewers_for_a_pull_request(owner, repo, pull_number, reviewers, team_reviewers, options)
        end

        def self.remove_requested_reviewers_from_a_pull_request(owner: nil, repo: nil, pull_number: nil, reviewers: nil, team_reviewers: nil, options: nil)
          new.remove_requested_reviewers_from_a_pull_request(owner, repo, pull_number, reviewers, team_reviewers, options)
        end

        def self.list_reviews_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, options: nil)
          new.list_reviews_for_a_pull_request(owner, repo, pull_number, options)
        end

        def self.create_a_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, commit_id: nil, body: nil, event: nil, comments: nil, options: nil)
          new.create_a_review_for_a_pull_request(owner, repo, pull_number, commit_id, body, event, comments, options)
        end

        def self.get_a_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, review_id: nil, options: nil)
          new.get_a_review_for_a_pull_request(owner, repo, pull_number, review_id, options)
        end

        def self.update_a_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, review_id: nil, body: nil, options: nil)
          new.update_a_review_for_a_pull_request(owner, repo, pull_number, review_id, body, options)
        end

        def self.delete_a_pending_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, review_id: nil, options: nil)
          new.delete_a_pending_review_for_a_pull_request(owner, repo, pull_number, review_id, options)
        end

        def self.list_comments_for_a_pull_request_review(owner: nil, repo: nil, pull_number: nil, review_id: nil, options: nil)
          new.list_comments_for_a_pull_request_review(owner, repo, pull_number, review_id, options)
        end

        def self.dismiss_a_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, review_id: nil, message: nil, event: nil, options: nil)
          new.dismiss_a_review_for_a_pull_request(owner, repo, pull_number, review_id, message, event, options)
        end

        def self.submit_a_review_for_a_pull_request(owner: nil, repo: nil, pull_number: nil, review_id: nil, body: nil, event: nil, options: nil)
          new.submit_a_review_for_a_pull_request(owner, repo, pull_number, review_id, body, event, options)
        end

        private

        # list pull requests
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PullsResult, PullsErrorResult
        def list_pull_requests(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], head: options[:head], base: options[:base], sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param title [String] The title of the new pull request.
        # @param head [String] Required. The name of the branch where your changes are implemented. For cross-repository pull requests in the same network, namespace head with a user like this: username:branch.
        # @param base [String] Required. The name of the branch you want the changes pulled into. This should be an existing branch on the current repository. You cannot submit a pull request to one repository that requests a merge to a base of another repository.
        # @param body [String] The contents of the pull request.
        # @param maintainer_can_modify [Boolean] Indicates whether maintainers can modify the pull request.
        # @param draft [Boolean] Indicates whether the pull request is a draft. See "Draft Pull Requests" in the GitHub Help documentation to learn more.
        # @param issue [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def create_a_pull_request(owner, repo, title, head, base, body, maintainer_can_modify, draft, issue, _options)
          auth    = nil
          body    = { title: title, head: head, base: base, body: body, maintainer_can_modify: maintainer_can_modify, draft: draft, issue: issue }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def get_a_pull_request(owner, repo, pull_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param title [String] The title of the pull request.
        # @param body [String] The contents of the pull request.
        # @param state [String] State of this Pull Request. Either open or closed.
        # @param base [String] The name of the branch you want your changes pulled into. This should be an existing branch on the current repository. You cannot update the base branch on a pull request to point to another repository.
        # @param maintainer_can_modify [Boolean] Indicates whether maintainers can modify the pull request.
        #
        # @return PullsResult, PullsErrorResult
        def update_a_pull_request(owner, repo, pull_number, title, body, state, base, maintainer_can_modify, _options)
          auth    = nil
          body    = { title: title, body: body, state: state, base: base, maintainer_can_modify: maintainer_can_modify }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list commits on a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def list_commits_on_a_pull_request(owner, repo, pull_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/commits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list pull requests files
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def list_pull_requests_files(owner, repo, pull_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/files"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a pull request has been merged
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def check_if_a_pull_request_has_been_merged(owner, repo, pull_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/merge"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # merge a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param commit_title [String] Title for the automatic commit message.
        # @param commit_message [String] Extra detail to append to automatic commit message.
        # @param sha [String] SHA that pull request head must match to allow merge.
        # @param merge_method [String] Merge method to use. Possible values are merge, squash or rebase. Default is merge.
        #
        # @return PullsResult, PullsErrorResult
        def merge_a_pull_request(owner, repo, pull_number, commit_title, commit_message, sha, merge_method, _options)
          auth    = nil
          body    = { commit_title: commit_title, commit_message: commit_message, sha: sha, merge_method: merge_method }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/merge"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a pull request branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param expected_head_sha [String] The expected SHA of the pull request's HEAD ref. This is the most recent commit on the pull request's branch. If the expected SHA does not match the pull request's HEAD, you will receive a 422 Unprocessable Entity status. You can use the "List commits" endpoint to find the most recent commit SHA. Default: SHA of the pull request's current HEAD ref.
        #
        # @return PullsResult, PullsErrorResult
        def update_a_pull_request_branch(owner, repo, pull_number, expected_head_sha, _options)
          auth    = nil
          body    = { expected_head_sha: expected_head_sha }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/update-branch"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list review comments in a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PullsResult, PullsErrorResult
        def list_review_comments_in_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a review comment for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return PullsResult, PullsErrorResult
        def get_a_review_comment_for_a_pull_request(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a review comment for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param body [String] Required. The text of the reply to the review comment.
        #
        # @return PullsResult, PullsErrorResult
        def update_a_review_comment_for_a_pull_request(owner, repo, comment_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a review comment for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return PullsResult, PullsErrorResult
        def delete_a_review_comment_for_a_pull_request(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list review comments on a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def list_review_comments_on_a_pull_request(owner, repo, pull_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a review comment for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param body [String] Required. The text of the review comment.
        # @param commit_id [String] The SHA of the commit needing a comment. Not using the latest commit SHA may render your comment outdated if a subsequent commit modifies the line you specify as the position.
        # @param path [String] The relative path to the file that necessitates a comment.
        # @param position [Integer] Required without comfort-fade preview unless using in_reply_to. The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note above.
        # @param side [String] Required with comfort-fade preview unless using in_reply_to. In a split diff view, the side of the diff that the pull request's changes appear on. Can be LEFT or RIGHT. Use LEFT for deletions that appear in red. Use RIGHT for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see "Diff view options" in the GitHub Help documentation.
        # @param line [Integer] Required with comfort-fade preview unless using in_reply_to. The line of the blob in the pull request diff that the comment applies to. For a multi-line comment, the last line of the range that your comment applies to.
        # @param start_line [Integer] Required when using multi-line comments unless using in_reply_to. To create multi-line comments, you must use the comfort-fade preview header. The start_line is the first line in the pull request diff that your multi-line comment applies to. To learn more about multi-line comments, see "Commenting on a pull request" in the GitHub Help documentation.
        # @param start_side [String] Required when using multi-line comments unless using in_reply_to. To create multi-line comments, you must use the comfort-fade preview header. The start_side is the starting side of the diff that the comment applies to. Can be LEFT or RIGHT. To learn more about multi-line comments, see "Commenting on a pull request" in the GitHub Help documentation. See side in this table for additional context.
        # @param in_reply_to [Integer] The ID of the review comment to reply to. To find the ID of a review comment with "List review comments on a pull request". When specified, all parameters other than body in the request body are ignored.
        #
        # @return PullsResult, PullsErrorResult
        def create_a_review_comment_for_a_pull_request(owner, repo, pull_number, body, commit_id, path, position, side, line, start_line, start_side, in_reply_to, _options)
          auth    = nil
          body    = { body: body, commit_id: commit_id, path: path, position: position, side: side, line: line, start_line: start_line, start_side: start_side, in_reply_to: in_reply_to }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a reply for a review comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param comment_id [Integer] comment_id parameter
        # @param body [String] Required. The text of the review comment.
        #
        # @return PullsResult, PullsErrorResult
        def create_a_reply_for_a_review_comment(owner, repo, pull_number, comment_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/comments/#{comment_id}/replies"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list requested reviewers for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def list_requested_reviewers_for_a_pull_request(owner, repo, pull_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/requested_reviewers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # request reviewers for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param reviewers [Array of strings] An array of user logins that will be requested.
        # @param team_reviewers [Array of strings] An array of team slugs that will be requested.
        #
        # @return PullsResult, PullsErrorResult
        def request_reviewers_for_a_pull_request(owner, repo, pull_number, reviewers, team_reviewers, _options)
          auth    = nil
          body    = { reviewers: reviewers, team_reviewers: team_reviewers }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/requested_reviewers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove requested reviewers from a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param reviewers [Array of strings] Required. An array of user logins that will be removed.
        # @param team_reviewers [Array of strings] An array of team slugs that will be removed.
        #
        # @return PullsResult, PullsErrorResult
        def remove_requested_reviewers_from_a_pull_request(owner, repo, pull_number, reviewers, team_reviewers, _options)
          auth    = nil
          body    = { reviewers: reviewers, team_reviewers: team_reviewers }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/requested_reviewers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reviews for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        #
        # @return PullsResult, PullsErrorResult
        def list_reviews_for_a_pull_request(owner, repo, pull_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param commit_id [String] The SHA of the commit that needs a review. Not using the latest commit SHA may render your review comment outdated if a subsequent commit modifies the line you specify as the position. Defaults to the most recent commit in the pull request when you do not specify a value.
        # @param body [String] Required when using REQUEST_CHANGES or COMMENT for the event parameter. The body text of the pull request review.
        # @param event [String] The review action you want to perform. The review actions include: APPROVE, REQUEST_CHANGES, or COMMENT. By leaving this blank, you set the review action state to PENDING, which means you will need to submit the pull request review when you are ready.
        # @param comments [Array of objects] Use the following table to specify the location, destination, and contents of the draft review comment.
        #
        # @return PullsResult, PullsErrorResult
        def create_a_review_for_a_pull_request(owner, repo, pull_number, commit_id, body, event, comments, _options)
          auth    = nil
          body    = { commit_id: commit_id, body: body, event: event, comments: comments }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        #
        # @return PullsResult, PullsErrorResult
        def get_a_review_for_a_pull_request(owner, repo, pull_number, review_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        # @param body [String] Required. The body text of the pull request review.
        #
        # @return PullsResult, PullsErrorResult
        def update_a_review_for_a_pull_request(owner, repo, pull_number, review_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a pending review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        #
        # @return PullsResult, PullsErrorResult
        def delete_a_pending_review_for_a_pull_request(owner, repo, pull_number, review_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list comments for a pull request review
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        #
        # @return PullsResult, PullsErrorResult
        def list_comments_for_a_pull_request_review(owner, repo, pull_number, review_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # dismiss a review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        # @param message [String] Required. The message for the pull request review dismissal
        # @param event [String]
        #
        # @return PullsResult, PullsErrorResult
        def dismiss_a_review_for_a_pull_request(owner, repo, pull_number, review_id, message, event, _options)
          auth    = nil
          body    = { message: message, event: event }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}/dismissals"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # submit a review for a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param review_id [Integer] review_id parameter
        # @param body [String] The body text of the pull request review
        # @param event [String] Required. The review action you want to perform. The review actions include: APPROVE, REQUEST_CHANGES, or COMMENT. When you leave this blank, the API returns HTTP 422 (Unrecognizable entity) and sets the review action state to PENDING, which means you will need to re-submit the pull request review using a review action.
        #
        # @return PullsResult, PullsErrorResult
        def submit_a_review_for_a_pull_request(owner, repo, pull_number, review_id, body, event, _options)
          auth    = nil
          body    = { body: body, event: event }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/reviews/#{review_id}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PullsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PullsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
