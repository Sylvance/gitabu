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
      # Class to display Repos result
      class ReposResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ReposErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Repos endpoints.
      class Repos
        def self.list_organization_repositories(org: nil, options: nil)
          new.list_organization_repositories(org, options)
        end

        def self.create_an_organization_repository(org: nil, name: nil, description: nil, homepage: nil, private: nil, visibility: nil, has_issues: nil, has_projects: nil, has_wiki: nil, is_template: nil, team_id: nil, auto_init: nil, gitignore_template: nil, license_template: nil, allow_squash_merge: nil, allow_merge_commit: nil, allow_rebase_merge: nil, allow_auto_merge: nil, delete_branch_on_merge: nil, options: nil)
          new.create_an_organization_repository(org, name, description, homepage, private, visibility, has_issues, has_projects, has_wiki, is_template, team_id, auto_init, gitignore_template, license_template, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, options)
        end

        def self.get_a_repository(owner: nil, repo: nil, options: nil)
          new.get_a_repository(owner, repo, options)
        end

        def self.update_a_repository(owner: nil, repo: nil, name: nil, description: nil, homepage: nil, private: nil, visibility: nil, security_and_analysis: nil, has_issues: nil, has_projects: nil, has_wiki: nil, is_template: nil, default_branch: nil, allow_squash_merge: nil, allow_merge_commit: nil, allow_rebase_merge: nil, allow_auto_merge: nil, delete_branch_on_merge: nil, archived: nil, allow_forking: nil, options: nil)
          new.update_a_repository(owner, repo, name, description, homepage, private, visibility, security_and_analysis, has_issues, has_projects, has_wiki, is_template, default_branch, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, archived, allow_forking, options)
        end

        def self.delete_a_repository(owner: nil, repo: nil, options: nil)
          new.delete_a_repository(owner, repo, options)
        end

        def self.enable_automated_security_fixes(owner: nil, repo: nil, options: nil)
          new.enable_automated_security_fixes(owner, repo, options)
        end

        def self.disable_automated_security_fixes(owner: nil, repo: nil, options: nil)
          new.disable_automated_security_fixes(owner, repo, options)
        end

        def self.list_codeowners_errors(owner: nil, repo: nil, options: nil)
          new.list_codeowners_errors(owner, repo, options)
        end

        def self.list_repository_contributors(owner: nil, repo: nil, options: nil)
          new.list_repository_contributors(owner, repo, options)
        end

        def self.create_a_repository_dispatch_event(owner: nil, repo: nil, event_type: nil, client_payload: nil, options: nil)
          new.create_a_repository_dispatch_event(owner, repo, event_type, client_payload, options)
        end

        def self.list_repository_languages(owner: nil, repo: nil, options: nil)
          new.list_repository_languages(owner, repo, options)
        end

        def self.list_repository_tags(owner: nil, repo: nil, options: nil)
          new.list_repository_tags(owner, repo, options)
        end

        def self.list_repository_teams(owner: nil, repo: nil, options: nil)
          new.list_repository_teams(owner, repo, options)
        end

        def self.get_all_repository_topics(owner: nil, repo: nil, options: nil)
          new.get_all_repository_topics(owner, repo, options)
        end

        def self.replace_all_repository_topics(owner: nil, repo: nil, names: nil, options: nil)
          new.replace_all_repository_topics(owner, repo, names, options)
        end

        def self.transfer_a_repository(owner: nil, repo: nil, new_owner: nil, team_ids: nil, options: nil)
          new.transfer_a_repository(owner, repo, new_owner, team_ids, options)
        end

        def self.check_if_vulnerability_alerts_are_enabled_for_a_repository(owner: nil, repo: nil, options: nil)
          new.check_if_vulnerability_alerts_are_enabled_for_a_repository(owner, repo, options)
        end

        def self.enable_vulnerability_alerts(owner: nil, repo: nil, options: nil)
          new.enable_vulnerability_alerts(owner, repo, options)
        end

        def self.disable_vulnerability_alerts(owner: nil, repo: nil, options: nil)
          new.disable_vulnerability_alerts(owner, repo, options)
        end

        def self.create_a_repository_using_a_template(template_owner: nil, template_repo: nil, owner: nil, name: nil, description: nil, include_all_branches: nil, private: nil, options: nil)
          new.create_a_repository_using_a_template(template_owner, template_repo, owner, name, description, include_all_branches, private, options)
        end

        def self.list_public_repositories(options: nil)
          new.list_public_repositories(options)
        end

        def self.list_repositories_for_the_authenticated_user(options: nil)
          new.list_repositories_for_the_authenticated_user(options)
        end

        def self.create_a_repository_for_the_authenticated_user(name: nil, description: nil, homepage: nil, private: nil, has_issues: nil, has_projects: nil, has_wiki: nil, team_id: nil, auto_init: nil, gitignore_template: nil, license_template: nil, allow_squash_merge: nil, allow_merge_commit: nil, allow_rebase_merge: nil, allow_auto_merge: nil, delete_branch_on_merge: nil, has_downloads: nil, is_template: nil, options: nil)
          new.create_a_repository_for_the_authenticated_user(name, description, homepage, private, has_issues, has_projects, has_wiki, team_id, auto_init, gitignore_template, license_template, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, has_downloads, is_template, options)
        end

        def self.list_repositories_for_a_user(username: nil, options: nil)
          new.list_repositories_for_a_user(username, options)
        end

        def self.list_all_autolinks_of_a_repository(owner: nil, repo: nil, options: nil)
          new.list_all_autolinks_of_a_repository(owner, repo, options)
        end

        def self.create_an_autolink_reference_for_a_repository(owner: nil, repo: nil, key_prefix: nil, url_template: nil, options: nil)
          new.create_an_autolink_reference_for_a_repository(owner, repo, key_prefix, url_template, options)
        end

        def self.get_an_autolink_reference_of_a_repository(owner: nil, repo: nil, autolink_id: nil, options: nil)
          new.get_an_autolink_reference_of_a_repository(owner, repo, autolink_id, options)
        end

        def self.delete_an_autolink_reference_from_a_repository(owner: nil, repo: nil, autolink_id: nil, options: nil)
          new.delete_an_autolink_reference_from_a_repository(owner, repo, autolink_id, options)
        end

        def self.get_repository_content(owner: nil, repo: nil, path: nil, options: nil)
          new.get_repository_content(owner, repo, path, options)
        end

        def self.create_or_update_file_contents(owner: nil, repo: nil, path: nil, message: nil, content: nil, sha: nil, branch: nil, committer: nil, author: nil, options: nil)
          new.create_or_update_file_contents(owner, repo, path, message, content, sha, branch, committer, author, options)
        end

        def self.delete_a_file(owner: nil, repo: nil, path: nil, message: nil, sha: nil, branch: nil, committer: nil, author: nil, options: nil)
          new.delete_a_file(owner, repo, path, message, sha, branch, committer, author, options)
        end

        def self.get_a_repository_readme(owner: nil, repo: nil, options: nil)
          new.get_a_repository_readme(owner, repo, options)
        end

        def self.get_a_repository_readme_for_a_directory(owner: nil, repo: nil, dir: nil, options: nil)
          new.get_a_repository_readme_for_a_directory(owner, repo, dir, options)
        end

        def self.download_a_repository_archive_tar(owner: nil, repo: nil, ref: nil, options: nil)
          new.download_a_repository_archive_tar(owner, repo, ref, options)
        end

        def self.download_a_repository_archive_zip(owner: nil, repo: nil, ref: nil, options: nil)
          new.download_a_repository_archive_zip(owner, repo, ref, options)
        end

        def self.list_forks(owner: nil, repo: nil, options: nil)
          new.list_forks(owner, repo, options)
        end

        def self.create_a_fork(owner: nil, repo: nil, organization: nil, options: nil)
          new.create_a_fork(owner, repo, organization, options)
        end

        def self.enable_git_lfs_for_a_repository(owner: nil, repo: nil, options: nil)
          new.enable_git_lfs_for_a_repository(owner, repo, options)
        end

        def self.disable_git_lfs_for_a_repository(owner: nil, repo: nil, options: nil)
          new.disable_git_lfs_for_a_repository(owner, repo, options)
        end

        private

        # list organization repositories
        #
        # @param org [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_organization_repositories(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { type: options[:type], sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an organization repository
        #
        # @param org [String]
        # @param name [String] Required. The name of the repository.
        # @param description [String] A short description of the repository.
        # @param homepage [String] A URL with more information about the repository.
        # @param private [Boolean] Whether the repository is private.
        # @param visibility [String] Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal. Note: For GitHub Enterprise Server and GitHub AE, this endpoint will only list repositories available to all users on the enterprise. For more information, see "Creating an internal repository" in the GitHub Help documentation.
        # @param has_issues [Boolean] Either true to enable issues for this repository or false to disable them.Default:
        # @param has_projects [Boolean] Either true to enable projects for this repository or false to disable them. Note: If you're creating a repository in an organization that has disabled repository projects, the default is false, and if you pass true, the API returns an error.Default:
        # @param has_wiki [Boolean] Either true to enable the wiki for this repository or false to disable it.Default:
        # @param is_template [Boolean] Either true to make this repo available as a template repository or false to prevent it.
        # @param team_id [Integer] The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
        # @param auto_init [Boolean] Pass true to create an initial commit with empty README.
        # @param gitignore_template [String] Desired language or platform .gitignore template to apply. Use the name of the template without the extension. For example, "Haskell".
        # @param license_template [String] Choose an open source license template that best suits your needs, and then use the license keyword as the license_template string. For example, "mit" or "mpl-2.0".
        # @param allow_squash_merge [Boolean] Either true to allow squash-merging pull requests, or false to prevent squash-merging.Default:
        # @param allow_merge_commit [Boolean] Either true to allow merging pull requests with a merge commit, or false to prevent merging pull requests with merge commits.Default:
        # @param allow_rebase_merge [Boolean] Either true to allow rebase-merging pull requests, or false to prevent rebase-merging.Default:
        # @param allow_auto_merge [Boolean] Either true to allow auto-merge on pull requests, or false to disallow auto-merge.
        # @param delete_branch_on_merge [Boolean] Either true to allow automatically deleting head branches when pull requests are merged, or false to prevent automatic deletion.
        #
        # @return ReposResult, ReposErrorResult
        def create_an_organization_repository(org, name, description, homepage, private, visibility, has_issues, has_projects, has_wiki, is_template, team_id, auto_init, gitignore_template, license_template, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, _options)
          auth    = nil
          body    = { name: name, description: description, homepage: homepage, private: private, visibility: visibility, has_issues: has_issues, has_projects: has_projects, has_wiki: has_wiki, is_template: is_template, team_id: team_id, auto_init: auto_init, gitignore_template: gitignore_template, license_template: license_template, allow_squash_merge: allow_squash_merge, allow_merge_commit: allow_merge_commit, allow_rebase_merge: allow_rebase_merge, allow_auto_merge: allow_auto_merge, delete_branch_on_merge: delete_branch_on_merge }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def get_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String] The name of the repository.
        # @param description [String] A short description of the repository.
        # @param homepage [String] A URL with more information about the repository.
        # @param private [Boolean] Either true to make the repository private or false to make it public. Default: false.
        #   Note: You will get a 422 error if the organization restricts changing repository visibility to organization owners and a non-owner tries to change the value of private. Note: You will get a 422 error if the organization restricts changing repository visibility to organization owners and a non-owner tries to change the value of private.
        # @param visibility [String] Can be public or private. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be internal."
        # @param security_and_analysis [Object or null] Specify which security and analysis features to enable or disable. For example, to enable GitHub Advanced Security, use this data in the body of the PATCH request: {"security_and_analysis": {"advanced_security": {"status": "enabled"}}}. If you have admin permissions for a private repository covered by an Advanced Security license, you can check which security and analysis features are currently enabled by using a GET /repos/{owner}/{repo} request.
        # @param has_issues [Boolean] Either true to enable issues for this repository or false to disable them.Default:
        # @param has_projects [Boolean] Either true to enable projects for this repository or false to disable them. Note: If you're creating a repository in an organization that has disabled repository projects, the default is false, and if you pass true, the API returns an error.Default:
        # @param has_wiki [Boolean] Either true to enable the wiki for this repository or false to disable it.Default:
        # @param is_template [Boolean] Either true to make this repo available as a template repository or false to prevent it.
        # @param default_branch [String] Updates the default branch for this repository.
        # @param allow_squash_merge [Boolean] Either true to allow squash-merging pull requests, or false to prevent squash-merging.Default:
        # @param allow_merge_commit [Boolean] Either true to allow merging pull requests with a merge commit, or false to prevent merging pull requests with merge commits.Default:
        # @param allow_rebase_merge [Boolean] Either true to allow rebase-merging pull requests, or false to prevent rebase-merging.Default:
        # @param allow_auto_merge [Boolean] Either true to allow auto-merge on pull requests, or false to disallow auto-merge.
        # @param delete_branch_on_merge [Boolean] Either true to allow automatically deleting head branches when pull requests are merged, or false to prevent automatic deletion.
        # @param archived [Boolean] true to archive this repository. Note: You cannot unarchive repositories through the API.
        # @param allow_forking [Boolean] Either true to allow private forks, or false to prevent private forks.
        #
        # @return ReposResult, ReposErrorResult
        def update_a_repository(owner, repo, name, description, homepage, private, visibility, security_and_analysis, has_issues, has_projects, has_wiki, is_template, default_branch, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, archived, allow_forking, _options)
          auth    = nil
          body    = { name: name, description: description, homepage: homepage, private: private, visibility: visibility, security_and_analysis: security_and_analysis, has_issues: has_issues, has_projects: has_projects, has_wiki: has_wiki, is_template: is_template, default_branch: default_branch, allow_squash_merge: allow_squash_merge, allow_merge_commit: allow_merge_commit, allow_rebase_merge: allow_rebase_merge, allow_auto_merge: allow_auto_merge, delete_branch_on_merge: delete_branch_on_merge, archived: archived, allow_forking: allow_forking }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def delete_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable automated security fixes
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def enable_automated_security_fixes(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/automated-security-fixes"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable automated security fixes
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def disable_automated_security_fixes(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/automated-security-fixes"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list codeowners errors
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_codeowners_errors(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { ref: options[:ref] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/codeowners/errors"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository contributors
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_repository_contributors(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { anon: options[:anon], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/contributors"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a repository dispatch event
        #
        # @param owner [String]
        # @param repo [String]
        # @param event_type [String] Required. A custom webhook event name.
        # @param client_payload [Object] JSON payload with extra information about the webhook event that your action or worklow may use.
        #
        # @return ReposResult, ReposErrorResult
        def create_a_repository_dispatch_event(owner, repo, event_type, client_payload, _options)
          auth    = nil
          body    = { event_type: event_type, client_payload: client_payload }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dispatches"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository languages
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_repository_languages(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/languages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository tags
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_repository_tags(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/tags"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository teams
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_repository_teams(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all repository topics
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def get_all_repository_topics(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/topics"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # replace all repository topics
        #
        # @param owner [String]
        # @param repo [String]
        # @param names [Array of strings] Required. An array of topics to add to the repository. Pass one or more topics to replace the set of existing topics. Send an empty array ([]) to clear all topics from the repository. Note: Topic names cannot contain uppercase letters.
        #
        # @return ReposResult, ReposErrorResult
        def replace_all_repository_topics(owner, repo, names, _options)
          auth    = nil
          body    = { names: names }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/topics"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # transfer a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param new_owner [String] Required. The username or organization name the repository will be transferred to.
        # @param team_ids [Array of integers] ID of the team or teams to add to the repository. Teams can only be added to organization-owned repositories.
        #
        # @return ReposResult, ReposErrorResult
        def transfer_a_repository(owner, repo, new_owner, team_ids, _options)
          auth    = nil
          body    = { new_owner: new_owner, team_ids: team_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/transfer"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if vulnerability alerts are enabled for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def check_if_vulnerability_alerts_are_enabled_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/vulnerability-alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable vulnerability alerts
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def enable_vulnerability_alerts(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/vulnerability-alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable vulnerability alerts
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def disable_vulnerability_alerts(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/vulnerability-alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a repository using a template
        #
        # @param template_owner [String]
        # @param template_repo [String]
        # @param owner [String] The organization or person who will own the new repository. To create a new repository in an organization, the authenticated user must be a member of the specified organization.
        # @param name [String] Required. The name of the new repository.
        # @param description [String] A short description of the new repository.
        # @param include_all_branches [Boolean] Set to true to include the directory structure and files from all branches in the template repository, and not just the default branch. Default: false.
        # @param private [Boolean] Either true to create a new private repository or false to create a new public one.
        #
        # @return ReposResult, ReposErrorResult
        def create_a_repository_using_a_template(template_owner, template_repo, owner, name, description, include_all_branches, private, _options)
          auth    = nil
          body    = { owner: owner, name: name, description: description, include_all_branches: include_all_branches, private: private }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{template_owner}/#{template_repo}/generate"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public repositories
        #
        # @params options [Hash]
        #
        # @return ReposResult, ReposErrorResult
        def list_public_repositories(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since] }
          uri     = "#{Gitabu::BASE_URL}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories for the authenticated user
        #
        # @params options [Hash]
        #
        # @return ReposResult, ReposErrorResult
        def list_repositories_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { visibility: options[:visibility], affiliation: options[:affiliation], type: options[:type], sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page], since: options[:since], before: options[:before] }
          uri     = "#{Gitabu::BASE_URL}/user/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a repository for the authenticated user
        #
        # @param name [String] Required. The name of the repository.
        # @param description [String] A short description of the repository.
        # @param homepage [String] A URL with more information about the repository.
        # @param private [Boolean] Whether the repository is private.
        # @param has_issues [Boolean] Whether issues are enabled.Default:
        # @param has_projects [Boolean] Whether projects are enabled.Default:
        # @param has_wiki [Boolean] Whether the wiki is enabled.Default:
        # @param team_id [Integer] The id of the team that will be granted access to this repository. This is only valid when creating a repository in an organization.
        # @param auto_init [Boolean] Whether the repository is initialized with a minimal README.
        # @param gitignore_template [String] The desired language or platform to apply to the .gitignore.
        # @param license_template [String] The license keyword of the open source license for this repository.
        # @param allow_squash_merge [Boolean] Whether to allow squash merges for pull requests.Default:
        # @param allow_merge_commit [Boolean] Whether to allow merge commits for pull requests.Default:
        # @param allow_rebase_merge [Boolean] Whether to allow rebase merges for pull requests.Default:
        # @param allow_auto_merge [Boolean] Whether to allow Auto-merge to be used on pull requests.
        # @param delete_branch_on_merge [Boolean] Whether to delete head branches when pull requests are merged
        # @param has_downloads [Boolean] Whether downloads are enabled.Default:
        # @param is_template [Boolean] Whether this repository acts as a template that can be used to generate new repositories.
        #
        # @return ReposResult, ReposErrorResult
        def create_a_repository_for_the_authenticated_user(name, description, homepage, private, has_issues, has_projects, has_wiki, team_id, auto_init, gitignore_template, license_template, allow_squash_merge, allow_merge_commit, allow_rebase_merge, allow_auto_merge, delete_branch_on_merge, has_downloads, is_template, _options)
          auth    = nil
          body    = { name: name, description: description, homepage: homepage, private: private, has_issues: has_issues, has_projects: has_projects, has_wiki: has_wiki, team_id: team_id, auto_init: auto_init, gitignore_template: gitignore_template, license_template: license_template, allow_squash_merge: allow_squash_merge, allow_merge_commit: allow_merge_commit, allow_rebase_merge: allow_rebase_merge, allow_auto_merge: allow_auto_merge, delete_branch_on_merge: delete_branch_on_merge, has_downloads: has_downloads, is_template: is_template }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories for a user
        #
        # @param username [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_repositories_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { type: options[:type], sort: options[:sort], direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list all autolinks of a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_all_autolinks_of_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/autolinks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an autolink reference for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param key_prefix [String] Required. The prefix appended by a number will generate a link any time it is found in an issue, pull request, or commit.
        # @param url_template [String] Required. The URL must contain  for the reference number.
        #
        # @return ReposResult, ReposErrorResult
        def create_an_autolink_reference_for_a_repository(owner, repo, key_prefix, url_template, _options)
          auth    = nil
          body    = { key_prefix: key_prefix, url_template: url_template }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/autolinks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an autolink reference of a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param autolink_id [Integer] autolink_id parameter
        #
        # @return ReposResult, ReposErrorResult
        def get_an_autolink_reference_of_a_repository(owner, repo, autolink_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/autolinks/#{autolink_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an autolink reference from a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param autolink_id [Integer] autolink_id parameter
        #
        # @return ReposResult, ReposErrorResult
        def delete_an_autolink_reference_from_a_repository(owner, repo, autolink_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/autolinks/#{autolink_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get repository content
        #
        # @param owner [String]
        # @param repo [String]
        # @param path [String] path parameter
        #
        # @return ReposResult, ReposErrorResult
        def get_repository_content(owner, repo, path, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { ref: options[:ref] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/contents/#{path}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update file contents
        #
        # @param owner [String]
        # @param repo [String]
        # @param path [String] path parameter
        # @param message [String] Required. The commit message.
        # @param content [String] Required. The new file content, using Base64 encoding.
        # @param sha [String] Required if you are updating a file. The blob SHA of the file being replaced.
        # @param branch [String] The branch name. Default: the repository’s default branch (usually master)
        # @param committer [Object] The person that committed the file. Default: the authenticated user.
        # @param author [Object] The author of the file. Default: The committer or the authenticated user if you omit committer.
        #
        # @return ReposResult, ReposErrorResult
        def create_or_update_file_contents(owner, repo, path, message, content, sha, branch, committer, author, _options)
          auth    = nil
          body    = { message: message, content: content, sha: sha, branch: branch, committer: committer, author: author }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/contents/#{path}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a file
        #
        # @param owner [String]
        # @param repo [String]
        # @param path [String] path parameter
        # @param message [String] Required. The commit message.
        # @param sha [String] Required. The blob SHA of the file being replaced.
        # @param branch [String] The branch name. Default: the repository’s default branch (usually master)
        # @param committer [Object] object containing information about the committer.
        # @param author [Object] object containing information about the author.
        #
        # @return ReposResult, ReposErrorResult
        def delete_a_file(owner, repo, path, message, sha, branch, committer, author, _options)
          auth    = nil
          body    = { message: message, sha: sha, branch: branch, committer: committer, author: author }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/contents/#{path}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository readme
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def get_a_repository_readme(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { ref: options[:ref] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/readme"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository readme for a directory
        #
        # @param owner [String]
        # @param repo [String]
        # @param dir [String] The alternate path to look for a README file
        #
        # @return ReposResult, ReposErrorResult
        def get_a_repository_readme_for_a_directory(owner, repo, dir, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { ref: options[:ref] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/readme/#{dir}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download a repository archive tar
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String]
        #
        # @return ReposResult, ReposErrorResult
        def download_a_repository_archive_tar(owner, repo, ref, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/tarball/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download a repository archive zip
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String]
        #
        # @return ReposResult, ReposErrorResult
        def download_a_repository_archive_zip(owner, repo, ref, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/zipball/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list forks
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def list_forks(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sort: options[:sort], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/forks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a fork
        #
        # @param owner [String]
        # @param repo [String]
        # @param organization [String] Optional parameter to specify the organization name if forking into an organization.
        #
        # @return ReposResult, ReposErrorResult
        def create_a_fork(owner, repo, organization, _options)
          auth    = nil
          body    = { organization: organization }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/forks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable git lfs for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def enable_git_lfs_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/lfs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable git lfs for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReposResult, ReposErrorResult
        def disable_git_lfs_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/lfs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReposResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReposErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
