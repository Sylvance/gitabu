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
      # Class to display Reactions result
      class ReactionsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ReactionsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Reactions endpoints.
      class Reactions
        def self.list_reactions_for_a_team_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.list_reactions_for_a_team_discussion_comment(org, team_slug, discussion_number, comment_number, options)
        end

        def self.create_reaction_for_a_team_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, content: nil, options: nil)
          new.create_reaction_for_a_team_discussion_comment(org, team_slug, discussion_number, comment_number, content, options)
        end

        def self.delete_team_discussion_comment_reaction(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, reaction_id: nil, options: nil)
          new.delete_team_discussion_comment_reaction(org, team_slug, discussion_number, comment_number, reaction_id, options)
        end

        def self.list_reactions_for_a_team_discussion(org: nil, team_slug: nil, discussion_number: nil, options: nil)
          new.list_reactions_for_a_team_discussion(org, team_slug, discussion_number, options)
        end

        def self.create_reaction_for_a_team_discussion(org: nil, team_slug: nil, discussion_number: nil, content: nil, options: nil)
          new.create_reaction_for_a_team_discussion(org, team_slug, discussion_number, content, options)
        end

        def self.delete_team_discussion_reaction(org: nil, team_slug: nil, discussion_number: nil, reaction_id: nil, options: nil)
          new.delete_team_discussion_reaction(org, team_slug, discussion_number, reaction_id, options)
        end

        def self.list_reactions_for_a_commit_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.list_reactions_for_a_commit_comment(owner, repo, comment_id, options)
        end

        def self.create_reaction_for_a_commit_comment(owner: nil, repo: nil, comment_id: nil, content: nil, options: nil)
          new.create_reaction_for_a_commit_comment(owner, repo, comment_id, content, options)
        end

        def self.delete_a_commit_comment_reaction(owner: nil, repo: nil, comment_id: nil, reaction_id: nil, options: nil)
          new.delete_a_commit_comment_reaction(owner, repo, comment_id, reaction_id, options)
        end

        def self.list_reactions_for_an_issue_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.list_reactions_for_an_issue_comment(owner, repo, comment_id, options)
        end

        def self.create_reaction_for_an_issue_comment(owner: nil, repo: nil, comment_id: nil, content: nil, options: nil)
          new.create_reaction_for_an_issue_comment(owner, repo, comment_id, content, options)
        end

        def self.delete_an_issue_comment_reaction(owner: nil, repo: nil, comment_id: nil, reaction_id: nil, options: nil)
          new.delete_an_issue_comment_reaction(owner, repo, comment_id, reaction_id, options)
        end

        def self.list_reactions_for_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.list_reactions_for_an_issue(owner, repo, issue_number, options)
        end

        def self.create_reaction_for_an_issue(owner: nil, repo: nil, issue_number: nil, content: nil, options: nil)
          new.create_reaction_for_an_issue(owner, repo, issue_number, content, options)
        end

        def self.delete_an_issue_reaction(owner: nil, repo: nil, issue_number: nil, reaction_id: nil, options: nil)
          new.delete_an_issue_reaction(owner, repo, issue_number, reaction_id, options)
        end

        def self.list_reactions_for_a_pull_request_review_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.list_reactions_for_a_pull_request_review_comment(owner, repo, comment_id, options)
        end

        def self.create_reaction_for_a_pull_request_review_comment(owner: nil, repo: nil, comment_id: nil, content: nil, options: nil)
          new.create_reaction_for_a_pull_request_review_comment(owner, repo, comment_id, content, options)
        end

        def self.delete_a_pull_request_comment_reaction(owner: nil, repo: nil, comment_id: nil, reaction_id: nil, options: nil)
          new.delete_a_pull_request_comment_reaction(owner, repo, comment_id, reaction_id, options)
        end

        def self.list_reactions_for_a_release(owner: nil, repo: nil, release_id: nil, options: nil)
          new.list_reactions_for_a_release(owner, repo, release_id, options)
        end

        def self.create_reaction_for_a_release(owner: nil, repo: nil, release_id: nil, content: nil, options: nil)
          new.create_reaction_for_a_release(owner, repo, release_id, content, options)
        end

        def self.delete_a_release_reaction(owner: nil, repo: nil, release_id: nil, reaction_id: nil, options: nil)
          new.delete_a_release_reaction(owner, repo, release_id, reaction_id, options)
        end

        def self.list_reactions_for_a_team_discussion_comment_legacy(team_id: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.list_reactions_for_a_team_discussion_comment_legacy(team_id, discussion_number, comment_number, options)
        end

        def self.create_reaction_for_a_team_discussion_comment_legacy(team_id: nil, discussion_number: nil, comment_number: nil, content: nil, options: nil)
          new.create_reaction_for_a_team_discussion_comment_legacy(team_id, discussion_number, comment_number, content, options)
        end

        def self.list_reactions_for_a_team_discussion_legacy(team_id: nil, discussion_number: nil, options: nil)
          new.list_reactions_for_a_team_discussion_legacy(team_id, discussion_number, options)
        end

        def self.create_reaction_for_a_team_discussion_legacy(team_id: nil, discussion_number: nil, content: nil, options: nil)
          new.create_reaction_for_a_team_discussion_legacy(team_id, discussion_number, content, options)
        end

        private

        # list reactions for a team discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_team_discussion_comment(org, team_slug, discussion_number, comment_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a team discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        # @param content [String] Required. The reaction type to add to the team discussion comment.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_team_discussion_comment(org, team_slug, discussion_number, comment_number, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete team discussion comment reaction
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_team_discussion_comment_reaction(org, team_slug, discussion_number, comment_number, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a team discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_team_discussion(org, team_slug, discussion_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a team discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param content [String] Required. The reaction type to add to the team discussion.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_team_discussion(org, team_slug, discussion_number, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete team discussion reaction
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_team_discussion_reaction(org, team_slug, discussion_number, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_commit_comment(owner, repo, comment_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a commit comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param content [String] Required. The reaction type to add to the commit comment.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_commit_comment(owner, repo, comment_id, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a commit comment reaction
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_a_commit_comment_reaction(owner, repo, comment_id, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/comments/#{comment_id}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_an_issue_comment(owner, repo, comment_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param content [String] Required. The reaction type to add to the issue comment.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_an_issue_comment(owner, repo, comment_id, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an issue comment reaction
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_an_issue_comment_reaction(owner, repo, comment_id, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_an_issue(owner, repo, issue_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param content [String] Required. The reaction type to add to the issue.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_an_issue(owner, repo, issue_number, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an issue reaction
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_an_issue_reaction(owner, repo, issue_number, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a pull request review comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_pull_request_review_comment(owner, repo, comment_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a pull request review comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param content [String] Required. The reaction type to add to the pull request review comment.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_pull_request_review_comment(owner, repo, comment_id, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a pull request comment reaction
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_a_pull_request_comment_reaction(owner, repo, comment_id, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/comments/#{comment_id}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_release(owner, repo, release_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        # @param content [String] Required. The reaction type to add to the release.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_release(owner, repo, release_id, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a release reaction
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        # @param reaction_id [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def delete_a_release_reaction(owner, repo, release_id, reaction_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}/reactions/#{reaction_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a team discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_team_discussion_comment_legacy(team_id, discussion_number, comment_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments/#{comment_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a team discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        # @param content [String] Required. The reaction type to add to the team discussion comment.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_team_discussion_comment_legacy(team_id, discussion_number, comment_number, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments/#{comment_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list reactions for a team discussion legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        #
        # @return ReactionsResult, ReactionsErrorResult
        def list_reactions_for_a_team_discussion_legacy(team_id, discussion_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { content: options[:content], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create reaction for a team discussion legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param content [String] Required. The reaction type to add to the team discussion.
        #
        # @return ReactionsResult, ReactionsErrorResult
        def create_reaction_for_a_team_discussion_legacy(team_id, discussion_number, content, _options)
          auth    = nil
          body    = { content: content }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/reactions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReactionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReactionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
