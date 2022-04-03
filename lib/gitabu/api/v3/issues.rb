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
      # Class to display Issues result
      class IssuesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class IssuesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Issues endpoints.
      class Issues
        def self.list_issues_assigned_to_the_authenticated_user(options: nil)
          new.list_issues_assigned_to_the_authenticated_user(options)
        end

        def self.list_organization_issues_assigned_to_the_authenticated_user(org: nil, options: nil)
          new.list_organization_issues_assigned_to_the_authenticated_user(org, options)
        end

        def self.list_repository_issues(owner: nil, repo: nil, options: nil)
          new.list_repository_issues(owner, repo, options)
        end

        def self.create_an_issue(owner: nil, repo: nil, title: nil, body: nil, assignee: nil, milestone: nil, labels: nil, assignees: nil, options: nil)
          new.create_an_issue(owner, repo, title, body, assignee, milestone, labels, assignees, options)
        end

        def self.get_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.get_an_issue(owner, repo, issue_number, options)
        end

        def self.update_an_issue(owner: nil, repo: nil, issue_number: nil, title: nil, body: nil, assignee: nil, state: nil, milestone: nil, labels: nil, assignees: nil, options: nil)
          new.update_an_issue(owner, repo, issue_number, title, body, assignee, state, milestone, labels, assignees, options)
        end

        def self.lock_an_issue(owner: nil, repo: nil, issue_number: nil, lock_reason: nil, options: nil)
          new.lock_an_issue(owner, repo, issue_number, lock_reason, options)
        end

        def self.unlock_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.unlock_an_issue(owner, repo, issue_number, options)
        end

        def self.list_user_account_issues_assigned_to_the_authenticated_user(options: nil)
          new.list_user_account_issues_assigned_to_the_authenticated_user(options)
        end

        def self.list_assignees(owner: nil, repo: nil, options: nil)
          new.list_assignees(owner, repo, options)
        end

        def self.check_if_a_user_can_be_assigned(owner: nil, repo: nil, assignee: nil, options: nil)
          new.check_if_a_user_can_be_assigned(owner, repo, assignee, options)
        end

        def self.add_assignees_to_an_issue(owner: nil, repo: nil, issue_number: nil, assignees: nil, options: nil)
          new.add_assignees_to_an_issue(owner, repo, issue_number, assignees, options)
        end

        def self.remove_assignees_from_an_issue(owner: nil, repo: nil, issue_number: nil, assignees: nil, options: nil)
          new.remove_assignees_from_an_issue(owner, repo, issue_number, assignees, options)
        end

        def self.list_issue_comments_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_issue_comments_for_a_repository(owner, repo, options)
        end

        def self.get_an_issue_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.get_an_issue_comment(owner, repo, comment_id, options)
        end

        def self.update_an_issue_comment(owner: nil, repo: nil, comment_id: nil, body: nil, options: nil)
          new.update_an_issue_comment(owner, repo, comment_id, body, options)
        end

        def self.delete_an_issue_comment(owner: nil, repo: nil, comment_id: nil, options: nil)
          new.delete_an_issue_comment(owner, repo, comment_id, options)
        end

        def self.list_issue_comments(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.list_issue_comments(owner, repo, issue_number, options)
        end

        def self.create_an_issue_comment(owner: nil, repo: nil, issue_number: nil, body: nil, options: nil)
          new.create_an_issue_comment(owner, repo, issue_number, body, options)
        end

        def self.list_issue_events_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_issue_events_for_a_repository(owner, repo, options)
        end

        def self.get_an_issue_event(owner: nil, repo: nil, event_id: nil, options: nil)
          new.get_an_issue_event(owner, repo, event_id, options)
        end

        def self.list_issue_events(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.list_issue_events(owner, repo, issue_number, options)
        end

        def self.list_labels_for_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.list_labels_for_an_issue(owner, repo, issue_number, options)
        end

        def self.add_labels_to_an_issue(owner: nil, repo: nil, issue_number: nil, labels: nil, options: nil)
          new.add_labels_to_an_issue(owner, repo, issue_number, labels, options)
        end

        def self.set_labels_for_an_issue(owner: nil, repo: nil, issue_number: nil, labels: nil, options: nil)
          new.set_labels_for_an_issue(owner, repo, issue_number, labels, options)
        end

        def self.remove_all_labels_from_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.remove_all_labels_from_an_issue(owner, repo, issue_number, options)
        end

        def self.remove_a_label_from_an_issue(owner: nil, repo: nil, issue_number: nil, name: nil, options: nil)
          new.remove_a_label_from_an_issue(owner, repo, issue_number, name, options)
        end

        def self.list_labels_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_labels_for_a_repository(owner, repo, options)
        end

        def self.create_a_label(owner: nil, repo: nil, name: nil, color: nil, description: nil, options: nil)
          new.create_a_label(owner, repo, name, color, description, options)
        end

        def self.get_a_label(owner: nil, repo: nil, name: nil, options: nil)
          new.get_a_label(owner, repo, name, options)
        end

        def self.update_a_label(owner: nil, repo: nil, name: nil, new_name: nil, color: nil, description: nil, options: nil)
          new.update_a_label(owner, repo, name, new_name, color, description, options)
        end

        def self.delete_a_label(owner: nil, repo: nil, name: nil, options: nil)
          new.delete_a_label(owner, repo, name, options)
        end

        def self.list_labels_for_issues_in_a_milestone(owner: nil, repo: nil, milestone_number: nil, options: nil)
          new.list_labels_for_issues_in_a_milestone(owner, repo, milestone_number, options)
        end

        def self.list_milestones(owner: nil, repo: nil, options: nil)
          new.list_milestones(owner, repo, options)
        end

        def self.create_a_milestone(owner: nil, repo: nil, title: nil, state: nil, description: nil, due_on: nil, options: nil)
          new.create_a_milestone(owner, repo, title, state, description, due_on, options)
        end

        def self.get_a_milestone(owner: nil, repo: nil, milestone_number: nil, options: nil)
          new.get_a_milestone(owner, repo, milestone_number, options)
        end

        def self.update_a_milestone(owner: nil, repo: nil, milestone_number: nil, title: nil, state: nil, description: nil, due_on: nil, options: nil)
          new.update_a_milestone(owner, repo, milestone_number, title, state, description, due_on, options)
        end

        def self.delete_a_milestone(owner: nil, repo: nil, milestone_number: nil, options: nil)
          new.delete_a_milestone(owner, repo, milestone_number, options)
        end

        def self.list_timeline_events_for_an_issue(owner: nil, repo: nil, issue_number: nil, options: nil)
          new.list_timeline_events_for_an_issue(owner, repo, issue_number, options)
        end

        private

        # list issues assigned to the authenticated user
        #
        # @params options [Hash]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_issues_assigned_to_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], state: options[:state], labels: options[:labels], sort: options[:sort], direction: options[:direction], since: options[:since], collab: options[:collab], orgs: options[:orgs], owned: options[:owned], pulls: options[:pulls], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization issues assigned to the authenticated user
        #
        # @param org [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_organization_issues_assigned_to_the_authenticated_user(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], state: options[:state], labels: options[:labels], sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository issues
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_repository_issues(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { milestone: options[:milestone], state: options[:state], assignee: options[:assignee], creator: options[:creator], mentioned: options[:mentioned], labels: options[:labels], sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param title [String or integer or ] Required. The title of the issue.
        # @param body [String] The contents of the issue.
        # @param assignee [String or null] Login for the user that this issue should be assigned to. NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise. This field is deprecated.
        # @param milestone [String or integer or null or string or integer] The number of the milestone to associate this issue with. NOTE: Only users with push access can set the milestone for new issues. The milestone is silently dropped otherwise.
        # @param labels [Array of strings or array of objects] Labels to associate with this issue. NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise.
        # @param assignees [Array of strings] Logins for Users to assign to this issue. NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise.
        #
        # @return IssuesResult, IssuesErrorResult
        def create_an_issue(owner, repo, title, body, assignee, milestone, labels, assignees, _options)
          auth    = nil
          body    = { title: title, body: body, assignee: assignee, milestone: milestone, labels: labels, assignees: assignees }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def get_an_issue(owner, repo, issue_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param title [String or integer or null or string or integer] The title of the issue.
        # @param body [String or null] The contents of the issue.
        # @param assignee [String or null] Login for the user that this issue should be assigned to. This field is deprecated.
        # @param state [String] State of the issue. Either open or closed.
        # @param milestone [String or integer or null or string or integer] The number of the milestone to associate this issue with or null to remove current. NOTE: Only users with push access can set the milestone for issues. The milestone is silently dropped otherwise.
        # @param labels [Array of strings or array of objects] Labels to associate with this issue. Pass one or more Labels to replace the set of Labels on this Issue. Send an empty array ([]) to clear all Labels from the Issue. NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise.
        # @param assignees [Array of strings] Logins for Users to assign to this issue. Pass one or more user logins to replace the set of assignees on this Issue. Send an empty array ([]) to clear all assignees from the Issue. NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise.
        #
        # @return IssuesResult, IssuesErrorResult
        def update_an_issue(owner, repo, issue_number, title, body, assignee, state, milestone, labels, assignees, _options)
          auth    = nil
          body    = { title: title, body: body, assignee: assignee, state: state, milestone: milestone, labels: labels, assignees: assignees }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # lock an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param lock_reason [String] The reason for locking the issue or pull request conversation. Lock will fail if you don't use one of these reasons:
        #   * off-topic
        #   * too heated
        #   * resolved
        #   * spam
        #
        # @return IssuesResult, IssuesErrorResult
        def lock_an_issue(owner, repo, issue_number, lock_reason, _options)
          auth    = nil
          body    = { lock_reason: lock_reason }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/lock"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unlock an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def unlock_an_issue(owner, repo, issue_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/lock"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list user account issues assigned to the authenticated user
        #
        # @params options [Hash]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_user_account_issues_assigned_to_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], state: options[:state], labels: options[:labels], sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/issues"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list assignees
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_assignees(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/assignees"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a user can be assigned
        #
        # @param owner [String]
        # @param repo [String]
        # @param assignee [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def check_if_a_user_can_be_assigned(owner, repo, assignee, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/assignees/#{assignee}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add assignees to an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param assignees [Array of strings] Usernames of people to assign this issue to. NOTE: Only users with push access can add assignees to an issue. Assignees are silently ignored otherwise.
        #
        # @return IssuesResult, IssuesErrorResult
        def add_assignees_to_an_issue(owner, repo, issue_number, assignees, _options)
          auth    = nil
          body    = { assignees: assignees }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/assignees"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove assignees from an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param assignees [Array of strings] Usernames of assignees to remove from an issue. NOTE: Only users with push access can remove assignees from an issue. Assignees are silently ignored otherwise.
        #
        # @return IssuesResult, IssuesErrorResult
        def remove_assignees_from_an_issue(owner, repo, issue_number, assignees, _options)
          auth    = nil
          body    = { assignees: assignees }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/assignees"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list issue comments for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_issue_comments_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], direction: options[:direction], since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def get_an_issue_comment(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        # @param body [String] Required. The contents of the comment.
        #
        # @return IssuesResult, IssuesErrorResult
        def update_an_issue_comment(owner, repo, comment_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param comment_id [Integer] comment_id parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def delete_an_issue_comment(owner, repo, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list issue comments
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def list_issue_comments(owner, repo, issue_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an issue comment
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param body [String] Required. The contents of the comment.
        #
        # @return IssuesResult, IssuesErrorResult
        def create_an_issue_comment(owner, repo, issue_number, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list issue events for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_issue_events_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an issue event
        #
        # @param owner [String]
        # @param repo [String]
        # @param event_id [Integer]
        #
        # @return IssuesResult, IssuesErrorResult
        def get_an_issue_event(owner, repo, event_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/events/#{event_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list issue events
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def list_issue_events(owner, repo, issue_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/events"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def list_labels_for_an_issue(owner, repo, issue_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add labels to an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param labels [Array of strings] The names of the labels to add to the issue's existing labels. You can pass an empty array to remove all labels. Alternatively, you can pass a single label as a string or an array of labels directly, but GitHub recommends passing an object with the labels key. You can also replace all of the labels for an issue. For more information, see "Set labels for an issue."
        #
        # @return IssuesResult, IssuesErrorResult
        def add_labels_to_an_issue(owner, repo, issue_number, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set labels for an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param labels [Array of strings] The names of the labels to set for the issue. The labels you set replace any existing labels. You can pass an empty array to remove all labels. Alternatively, you can pass a single label as a string or an array of labels directly, but GitHub recommends passing an object with the labels key. You can also add labels to the existing labels for an issue. For more information, see "Add labels to an issue."
        #
        # @return IssuesResult, IssuesErrorResult
        def set_labels_for_an_issue(owner, repo, issue_number, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove all labels from an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def remove_all_labels_from_an_issue(owner, repo, issue_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a label from an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        # @param name [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def remove_a_label_from_an_issue(owner, repo, issue_number, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_labels_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a label
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String] Required. The name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing :strawberry: will render the emoji . For a full list of available emoji and codes, see "Emoji cheat sheet."
        # @param color [String] The hexadecimal color code for the label, without the leading #.
        # @param description [String] A short description of the label. Must be 100 characters or fewer.
        #
        # @return IssuesResult, IssuesErrorResult
        def create_a_label(owner, repo, name, color, description, _options)
          auth    = nil
          body    = { name: name, color: color, description: description }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a label
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def get_a_label(owner, repo, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a label
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String]
        # @param new_name [String] The new name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing :strawberry: will render the emoji . For a full list of available emoji and codes, see "Emoji cheat sheet."
        # @param color [String] The hexadecimal color code for the label, without the leading #.
        # @param description [String] A short description of the label. Must be 100 characters or fewer.
        #
        # @return IssuesResult, IssuesErrorResult
        def update_a_label(owner, repo, name, new_name, color, description, _options)
          auth    = nil
          body    = { new_name: new_name, color: color, description: description }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a label
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def delete_a_label(owner, repo, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for issues in a milestone
        #
        # @param owner [String]
        # @param repo [String]
        # @param milestone_number [Integer] milestone_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def list_labels_for_issues_in_a_milestone(owner, repo, milestone_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones/#{milestone_number}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list milestones
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return IssuesResult, IssuesErrorResult
        def list_milestones(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a milestone
        #
        # @param owner [String]
        # @param repo [String]
        # @param title [String] Required. The title of the milestone.
        # @param state [String] The state of the milestone. Either open or closed.Default: open
        # @param description [String] A description of the milestone.
        # @param due_on [String] The milestone due date. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        #
        # @return IssuesResult, IssuesErrorResult
        def create_a_milestone(owner, repo, title, state, description, due_on, _options)
          auth    = nil
          body    = { title: title, state: state, description: description, due_on: due_on }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a milestone
        #
        # @param owner [String]
        # @param repo [String]
        # @param milestone_number [Integer] milestone_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def get_a_milestone(owner, repo, milestone_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones/#{milestone_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a milestone
        #
        # @param owner [String]
        # @param repo [String]
        # @param milestone_number [Integer] milestone_number parameter
        # @param title [String] The title of the milestone.
        # @param state [String] The state of the milestone. Either open or closed.Default: open
        # @param description [String] A description of the milestone.
        # @param due_on [String] The milestone due date. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        #
        # @return IssuesResult, IssuesErrorResult
        def update_a_milestone(owner, repo, milestone_number, title, state, description, due_on, _options)
          auth    = nil
          body    = { title: title, state: state, description: description, due_on: due_on }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones/#{milestone_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a milestone
        #
        # @param owner [String]
        # @param repo [String]
        # @param milestone_number [Integer] milestone_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def delete_a_milestone(owner, repo, milestone_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/milestones/#{milestone_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list timeline events for an issue
        #
        # @param owner [String]
        # @param repo [String]
        # @param issue_number [Integer] issue_number parameter
        #
        # @return IssuesResult, IssuesErrorResult
        def list_timeline_events_for_an_issue(owner, repo, issue_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/issues/#{issue_number}/timeline"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            IssuesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            IssuesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
