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
      # Class to display Branches result
      class BranchesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class BranchesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Branches endpoints.
      class Branches
        def self.list_branches(owner: nil, repo: nil, options: nil)
          new.list_branches(owner, repo, options)
        end

        def self.get_a_branch(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_a_branch(owner, repo, branch, options)
        end

        def self.rename_a_branch(owner: nil, repo: nil, branch: nil, new_name: nil, options: nil)
          new.rename_a_branch(owner, repo, branch, new_name, options)
        end

        def self.sync_a_fork_branch_with_the_upstream_repository(owner: nil, repo: nil, branch: nil, options: nil)
          new.sync_a_fork_branch_with_the_upstream_repository(owner, repo, branch, options)
        end

        def self.merge_a_branch(owner: nil, repo: nil, base: nil, head: nil, commit_message: nil, options: nil)
          new.merge_a_branch(owner, repo, base, head, commit_message, options)
        end

        def self.get_branch_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_branch_protection(owner, repo, branch, options)
        end

        def self.update_branch_protection(owner: nil, repo: nil, branch: nil, required_status_checks: nil, enforce_admins: nil, required_pull_request_reviews: nil, restrictions: nil, required_linear_history: nil, allow_force_pushes: nil, allow_deletions: nil, required_conversation_resolution: nil, options: nil)
          new.update_branch_protection(owner, repo, branch, required_status_checks, enforce_admins, required_pull_request_reviews, restrictions, required_linear_history, allow_force_pushes, allow_deletions, required_conversation_resolution, options)
        end

        def self.delete_branch_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.delete_branch_protection(owner, repo, branch, options)
        end

        def self.get_admin_branch_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_admin_branch_protection(owner, repo, branch, options)
        end

        def self.set_admin_branch_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.set_admin_branch_protection(owner, repo, branch, options)
        end

        def self.delete_admin_branch_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.delete_admin_branch_protection(owner, repo, branch, options)
        end

        def self.get_pull_request_review_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_pull_request_review_protection(owner, repo, branch, options)
        end

        def self.update_pull_request_review_protection(owner: nil, repo: nil, branch: nil, dismissal_restrictions: nil, dismiss_stale_reviews: nil, require_code_owner_reviews: nil, required_approving_review_count: nil, bypass_pull_request_allowances: nil, options: nil)
          new.update_pull_request_review_protection(owner, repo, branch, dismissal_restrictions, dismiss_stale_reviews, require_code_owner_reviews, required_approving_review_count, bypass_pull_request_allowances, options)
        end

        def self.delete_pull_request_review_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.delete_pull_request_review_protection(owner, repo, branch, options)
        end

        def self.get_commit_signature_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_commit_signature_protection(owner, repo, branch, options)
        end

        def self.create_commit_signature_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.create_commit_signature_protection(owner, repo, branch, options)
        end

        def self.delete_commit_signature_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.delete_commit_signature_protection(owner, repo, branch, options)
        end

        def self.get_status_checks_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_status_checks_protection(owner, repo, branch, options)
        end

        def self.update_status_check_protection(owner: nil, repo: nil, branch: nil, strict: nil, contexts: nil, checks: nil, options: nil)
          new.update_status_check_protection(owner, repo, branch, strict, contexts, checks, options)
        end

        def self.remove_status_check_protection(owner: nil, repo: nil, branch: nil, options: nil)
          new.remove_status_check_protection(owner, repo, branch, options)
        end

        def self.get_all_status_check_contexts(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_all_status_check_contexts(owner, repo, branch, options)
        end

        def self.add_status_check_contexts(owner: nil, repo: nil, branch: nil, contexts: nil, options: nil)
          new.add_status_check_contexts(owner, repo, branch, contexts, options)
        end

        def self.set_status_check_contexts(owner: nil, repo: nil, branch: nil, contexts: nil, options: nil)
          new.set_status_check_contexts(owner, repo, branch, contexts, options)
        end

        def self.remove_status_check_contexts(owner: nil, repo: nil, branch: nil, contexts: nil, options: nil)
          new.remove_status_check_contexts(owner, repo, branch, contexts, options)
        end

        def self.get_access_restrictions(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_access_restrictions(owner, repo, branch, options)
        end

        def self.delete_access_restrictions(owner: nil, repo: nil, branch: nil, options: nil)
          new.delete_access_restrictions(owner, repo, branch, options)
        end

        def self.get_apps_with_access_to_the_protected_branch(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_apps_with_access_to_the_protected_branch(owner, repo, branch, options)
        end

        def self.add_app_access_restrictions(owner: nil, repo: nil, branch: nil, apps: nil, options: nil)
          new.add_app_access_restrictions(owner, repo, branch, apps, options)
        end

        def self.set_app_access_restrictions(owner: nil, repo: nil, branch: nil, apps: nil, options: nil)
          new.set_app_access_restrictions(owner, repo, branch, apps, options)
        end

        def self.remove_app_access_restrictions(owner: nil, repo: nil, branch: nil, apps: nil, options: nil)
          new.remove_app_access_restrictions(owner, repo, branch, apps, options)
        end

        def self.get_teams_with_access_to_the_protected_branch(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_teams_with_access_to_the_protected_branch(owner, repo, branch, options)
        end

        def self.add_team_access_restrictions(owner: nil, repo: nil, branch: nil, teams: nil, options: nil)
          new.add_team_access_restrictions(owner, repo, branch, teams, options)
        end

        def self.set_team_access_restrictions(owner: nil, repo: nil, branch: nil, teams: nil, options: nil)
          new.set_team_access_restrictions(owner, repo, branch, teams, options)
        end

        def self.remove_team_access_restrictions(owner: nil, repo: nil, branch: nil, teams: nil, options: nil)
          new.remove_team_access_restrictions(owner, repo, branch, teams, options)
        end

        def self.get_users_with_access_to_the_protected_branch(owner: nil, repo: nil, branch: nil, options: nil)
          new.get_users_with_access_to_the_protected_branch(owner, repo, branch, options)
        end

        def self.add_user_access_restrictions(owner: nil, repo: nil, branch: nil, users: nil, options: nil)
          new.add_user_access_restrictions(owner, repo, branch, users, options)
        end

        def self.set_user_access_restrictions(owner: nil, repo: nil, branch: nil, users: nil, options: nil)
          new.set_user_access_restrictions(owner, repo, branch, users, options)
        end

        def self.remove_user_access_restrictions(owner: nil, repo: nil, branch: nil, users: nil, options: nil)
          new.remove_user_access_restrictions(owner, repo, branch, users, options)
        end

        private

        # list branches
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return BranchesResult, BranchesErrorResult
        def list_branches(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { protected: options[:protected], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_a_branch(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # rename a branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param new_name [String] Required. The new name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def rename_a_branch(owner, repo, branch, new_name, _options)
          auth    = nil
          body    = { new_name: new_name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/rename"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # sync a fork branch with the upstream repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] Required. The name of the branch which should be updated to match upstream.
        #
        # @return BranchesResult, BranchesErrorResult
        def sync_a_fork_branch_with_the_upstream_repository(owner, repo, branch, _options)
          auth    = nil
          body    = { branch: branch }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/merge-upstream"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # merge a branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param base [String] Required. The name of the base branch that the head will be merged into.
        # @param head [String] Required. The head to merge. This can be a branch name or a commit SHA1.
        # @param commit_message [String] Commit message to use for the merge commit. If omitted, a default message will be used.
        #
        # @return BranchesResult, BranchesErrorResult
        def merge_a_branch(owner, repo, base, head, commit_message, _options)
          auth    = nil
          body    = { base: base, head: head, commit_message: commit_message }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/merges"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_branch_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param required_status_checks [Object or null] Required. Require status checks to pass before merging. Set to null to disable.
        # @param enforce_admins [Boolean or null] Required. Enforce all configured restrictions for administrators. Set to true to enforce required status checks for repository administrators. Set to null to disable.
        # @param required_pull_request_reviews [Object or null] Required. Require at least one approving review on a pull request, before merging. Set to null to disable.
        # @param restrictions [Object or null] Required. Restrict who can push to the protected branch. User, app, and team restrictions are only available for organization-owned repositories. Set to null to disable.
        # @param required_linear_history [Boolean] Enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch. Set to true to enforce a linear commit history. Set to false to disable a linear commit Git history. Your repository must allow squash merging or rebase merging before you can enable a linear commit history. Default: false. For more information, see "Requiring a linear commit history" in the GitHub Help documentation.
        # @param allow_force_pushes [Boolean or null] Permits force pushes to the protected branch by anyone with write access to the repository. Set to true to allow force pushes. Set to false or null to block force pushes. Default: false. For more information, see "Enabling force pushes to a protected branch" in the GitHub Help documentation."
        # @param allow_deletions [Boolean] Allows deletion of the protected branch by anyone with write access to the repository. Set to false to prevent deletion of the protected branch. Default: false. For more information, see "Enabling force pushes to a protected branch" in the GitHub Help documentation.
        # @param required_conversation_resolution [Boolean] Requires all conversations on code to be resolved before a pull request can be merged into a branch that matches this rule. Set to false to disable. Default: false.
        #
        # @return BranchesResult, BranchesErrorResult
        def update_branch_protection(owner, repo, branch, required_status_checks, enforce_admins, required_pull_request_reviews, restrictions, required_linear_history, allow_force_pushes, allow_deletions, required_conversation_resolution, _options)
          auth    = nil
          body    = { required_status_checks: required_status_checks, enforce_admins: enforce_admins, required_pull_request_reviews: required_pull_request_reviews, restrictions: restrictions, required_linear_history: required_linear_history, allow_force_pushes: allow_force_pushes, allow_deletions: allow_deletions, required_conversation_resolution: required_conversation_resolution }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def delete_branch_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get admin branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_admin_branch_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/enforce_admins"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set admin branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def set_admin_branch_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/enforce_admins"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete admin branch protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def delete_admin_branch_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/enforce_admins"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get pull request review protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_pull_request_review_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_pull_request_reviews"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update pull request review protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param dismissal_restrictions [Object] Specify which users and teams can dismiss pull request reviews. Pass an empty dismissal_restrictions object to disable. User and team dismissal_restrictions are only available for organization-owned repositories. Omit this parameter for personal repositories.
        # @param dismiss_stale_reviews [Boolean] Set to true if you want to automatically dismiss approving reviews when someone pushes a new commit.
        # @param require_code_owner_reviews [Boolean] Blocks merging pull requests until code owners have reviewed.
        # @param required_approving_review_count [Integer] Specifies the number of reviewers required to approve pull requests. Use a number between 1 and 6 or 0 to not require reviewers.
        # @param bypass_pull_request_allowances [Object] Allow specific users or teams to bypass pull request requirements.
        #
        # @return BranchesResult, BranchesErrorResult
        def update_pull_request_review_protection(owner, repo, branch, dismissal_restrictions, dismiss_stale_reviews, require_code_owner_reviews, required_approving_review_count, bypass_pull_request_allowances, _options)
          auth    = nil
          body    = { dismissal_restrictions: dismissal_restrictions, dismiss_stale_reviews: dismiss_stale_reviews, require_code_owner_reviews: require_code_owner_reviews, required_approving_review_count: required_approving_review_count, bypass_pull_request_allowances: bypass_pull_request_allowances }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_pull_request_reviews"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete pull request review protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def delete_pull_request_review_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_pull_request_reviews"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get commit signature protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_commit_signature_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_signatures"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create commit signature protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def create_commit_signature_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_signatures"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete commit signature protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def delete_commit_signature_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_signatures"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get status checks protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_status_checks_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update status check protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param strict [Boolean] Require branches to be up to date before merging.
        # @param contexts [Array of strings] Deprecated: The list of status checks to require in order to merge into this branch. If any of these checks have recently been set by a particular GitHub App, they will be required to come from that app in future for the branch to merge. Use checks instead of contexts for more fine-grained control.
        # @param checks [Array of objects] The list of status checks to require in order to merge into this branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def update_status_check_protection(owner, repo, branch, strict, contexts, checks, _options)
          auth    = nil
          body    = { strict: strict, contexts: contexts, checks: checks }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove status check protection
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def remove_status_check_protection(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all status check contexts
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_all_status_check_contexts(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks/contexts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add status check contexts
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param contexts [Array of strings] Required. contexts parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def add_status_check_contexts(owner, repo, branch, contexts, _options)
          auth    = nil
          body    = { contexts: contexts }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks/contexts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set status check contexts
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param contexts [Array of strings] Required. contexts parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def set_status_check_contexts(owner, repo, branch, contexts, _options)
          auth    = nil
          body    = { contexts: contexts }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks/contexts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove status check contexts
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param contexts [Array of strings] Required. contexts parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def remove_status_check_contexts(owner, repo, branch, contexts, _options)
          auth    = nil
          body    = { contexts: contexts }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/required_status_checks/contexts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_access_restrictions(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def delete_access_restrictions(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get apps with access to the protected branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_apps_with_access_to_the_protected_branch(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/apps"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add app access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param apps [Array of strings] Required. apps parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def add_app_access_restrictions(owner, repo, branch, apps, _options)
          auth    = nil
          body    = { apps: apps }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/apps"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set app access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param apps [Array of strings] Required. apps parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def set_app_access_restrictions(owner, repo, branch, apps, _options)
          auth    = nil
          body    = { apps: apps }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/apps"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove app access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param apps [Array of strings] Required. apps parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def remove_app_access_restrictions(owner, repo, branch, apps, _options)
          auth    = nil
          body    = { apps: apps }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/apps"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get teams with access to the protected branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_teams_with_access_to_the_protected_branch(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add team access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param teams [Array of strings] Required. teams parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def add_team_access_restrictions(owner, repo, branch, teams, _options)
          auth    = nil
          body    = { teams: teams }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set team access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param teams [Array of strings] Required. teams parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def set_team_access_restrictions(owner, repo, branch, teams, _options)
          auth    = nil
          body    = { teams: teams }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove team access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param teams [Array of strings] Required. teams parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def remove_team_access_restrictions(owner, repo, branch, teams, _options)
          auth    = nil
          body    = { teams: teams }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get users with access to the protected branch
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        #
        # @return BranchesResult, BranchesErrorResult
        def get_users_with_access_to_the_protected_branch(owner, repo, branch, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add user access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param users [Array of strings] Required. users parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def add_user_access_restrictions(owner, repo, branch, users, _options)
          auth    = nil
          body    = { users: users }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set user access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param users [Array of strings] Required. users parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def set_user_access_restrictions(owner, repo, branch, users, _options)
          auth    = nil
          body    = { users: users }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove user access restrictions
        #
        # @param owner [String]
        # @param repo [String]
        # @param branch [String] The name of the branch.
        # @param users [Array of strings] Required. users parameter
        #
        # @return BranchesResult, BranchesErrorResult
        def remove_user_access_restrictions(owner, repo, branch, users, _options)
          auth    = nil
          body    = { users: users }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/branches/#{branch}/protection/restrictions/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            BranchesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            BranchesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
