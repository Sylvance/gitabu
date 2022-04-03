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
      # Class to display Teams result
      class TeamsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class TeamsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Teams endpoints.
      class Teams
        def self.list_teams(org: nil, options: nil)
          new.list_teams(org, options)
        end

        def self.create_a_team(org: nil, name: nil, description: nil, maintainers: nil, repo_names: nil, privacy: nil, permission: nil, parent_team_id: nil, options: nil)
          new.create_a_team(org, name, description, maintainers, repo_names, privacy, permission, parent_team_id, options)
        end

        def self.get_a_team_by_name(org: nil, team_slug: nil, options: nil)
          new.get_a_team_by_name(org, team_slug, options)
        end

        def self.update_a_team(org: nil, team_slug: nil, name: nil, description: nil, privacy: nil, permission: nil, parent_team_id: nil, options: nil)
          new.update_a_team(org, team_slug, name, description, privacy, permission, parent_team_id, options)
        end

        def self.delete_a_team(org: nil, team_slug: nil, options: nil)
          new.delete_a_team(org, team_slug, options)
        end

        def self.list_team_projects(org: nil, team_slug: nil, options: nil)
          new.list_team_projects(org, team_slug, options)
        end

        def self.check_team_permissions_for_a_project(org: nil, team_slug: nil, project_id: nil, options: nil)
          new.check_team_permissions_for_a_project(org, team_slug, project_id, options)
        end

        def self.add_or_update_team_project_permissions(org: nil, team_slug: nil, project_id: nil, permission: nil, options: nil)
          new.add_or_update_team_project_permissions(org, team_slug, project_id, permission, options)
        end

        def self.remove_a_project_from_a_team(org: nil, team_slug: nil, project_id: nil, options: nil)
          new.remove_a_project_from_a_team(org, team_slug, project_id, options)
        end

        def self.list_team_repositories(org: nil, team_slug: nil, options: nil)
          new.list_team_repositories(org, team_slug, options)
        end

        def self.check_team_permissions_for_a_repository(org: nil, team_slug: nil, owner: nil, repo: nil, options: nil)
          new.check_team_permissions_for_a_repository(org, team_slug, owner, repo, options)
        end

        def self.add_or_update_team_repository_permissions(org: nil, team_slug: nil, owner: nil, repo: nil, permission: nil, options: nil)
          new.add_or_update_team_repository_permissions(org, team_slug, owner, repo, permission, options)
        end

        def self.remove_a_repository_from_a_team(org: nil, team_slug: nil, owner: nil, repo: nil, options: nil)
          new.remove_a_repository_from_a_team(org, team_slug, owner, repo, options)
        end

        def self.list_child_teams(org: nil, team_slug: nil, options: nil)
          new.list_child_teams(org, team_slug, options)
        end

        def self.get_a_team_legacy(team_id: nil, options: nil)
          new.get_a_team_legacy(team_id, options)
        end

        def self.update_a_team_legacy(team_id: nil, name: nil, description: nil, privacy: nil, permission: nil, parent_team_id: nil, options: nil)
          new.update_a_team_legacy(team_id, name, description, privacy, permission, parent_team_id, options)
        end

        def self.delete_a_team_legacy(team_id: nil, options: nil)
          new.delete_a_team_legacy(team_id, options)
        end

        def self.list_team_projects_legacy(team_id: nil, options: nil)
          new.list_team_projects_legacy(team_id, options)
        end

        def self.check_team_permissions_for_a_project_legacy(team_id: nil, project_id: nil, options: nil)
          new.check_team_permissions_for_a_project_legacy(team_id, project_id, options)
        end

        def self.add_or_update_team_project_permissions_legacy(team_id: nil, project_id: nil, permission: nil, options: nil)
          new.add_or_update_team_project_permissions_legacy(team_id, project_id, permission, options)
        end

        def self.remove_a_project_from_a_team_legacy(team_id: nil, project_id: nil, options: nil)
          new.remove_a_project_from_a_team_legacy(team_id, project_id, options)
        end

        def self.list_team_repositories_legacy(team_id: nil, options: nil)
          new.list_team_repositories_legacy(team_id, options)
        end

        def self.check_team_permissions_for_a_repository_legacy(team_id: nil, owner: nil, repo: nil, options: nil)
          new.check_team_permissions_for_a_repository_legacy(team_id, owner, repo, options)
        end

        def self.add_or_update_team_repository_permissions_legacy(team_id: nil, owner: nil, repo: nil, permission: nil, options: nil)
          new.add_or_update_team_repository_permissions_legacy(team_id, owner, repo, permission, options)
        end

        def self.remove_a_repository_from_a_team_legacy(team_id: nil, owner: nil, repo: nil, options: nil)
          new.remove_a_repository_from_a_team_legacy(team_id, owner, repo, options)
        end

        def self.list_child_teams_legacy(team_id: nil, options: nil)
          new.list_child_teams_legacy(team_id, options)
        end

        def self.list_teams_for_the_authenticated_user(options: nil)
          new.list_teams_for_the_authenticated_user(options)
        end

        def self.list_discussion_comments(org: nil, team_slug: nil, discussion_number: nil, options: nil)
          new.list_discussion_comments(org, team_slug, discussion_number, options)
        end

        def self.create_a_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, body: nil, options: nil)
          new.create_a_discussion_comment(org, team_slug, discussion_number, body, options)
        end

        def self.get_a_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.get_a_discussion_comment(org, team_slug, discussion_number, comment_number, options)
        end

        def self.update_a_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, body: nil, options: nil)
          new.update_a_discussion_comment(org, team_slug, discussion_number, comment_number, body, options)
        end

        def self.delete_a_discussion_comment(org: nil, team_slug: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.delete_a_discussion_comment(org, team_slug, discussion_number, comment_number, options)
        end

        def self.list_discussion_comments_legacy(team_id: nil, discussion_number: nil, options: nil)
          new.list_discussion_comments_legacy(team_id, discussion_number, options)
        end

        def self.create_a_discussion_comment_legacy(team_id: nil, discussion_number: nil, body: nil, options: nil)
          new.create_a_discussion_comment_legacy(team_id, discussion_number, body, options)
        end

        def self.get_a_discussion_comment_legacy(team_id: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.get_a_discussion_comment_legacy(team_id, discussion_number, comment_number, options)
        end

        def self.update_a_discussion_comment_legacy(team_id: nil, discussion_number: nil, comment_number: nil, body: nil, options: nil)
          new.update_a_discussion_comment_legacy(team_id, discussion_number, comment_number, body, options)
        end

        def self.delete_a_discussion_comment_legacy(team_id: nil, discussion_number: nil, comment_number: nil, options: nil)
          new.delete_a_discussion_comment_legacy(team_id, discussion_number, comment_number, options)
        end

        def self.list_discussions(org: nil, team_slug: nil, options: nil)
          new.list_discussions(org, team_slug, options)
        end

        def self.create_a_discussion(org: nil, team_slug: nil, title: nil, body: nil, private: nil, options: nil)
          new.create_a_discussion(org, team_slug, title, body, private, options)
        end

        def self.get_a_discussion(org: nil, team_slug: nil, discussion_number: nil, options: nil)
          new.get_a_discussion(org, team_slug, discussion_number, options)
        end

        def self.update_a_discussion(org: nil, team_slug: nil, discussion_number: nil, title: nil, body: nil, options: nil)
          new.update_a_discussion(org, team_slug, discussion_number, title, body, options)
        end

        def self.delete_a_discussion(org: nil, team_slug: nil, discussion_number: nil, options: nil)
          new.delete_a_discussion(org, team_slug, discussion_number, options)
        end

        def self.list_discussions_legacy(team_id: nil, options: nil)
          new.list_discussions_legacy(team_id, options)
        end

        def self.create_a_discussion_legacy(team_id: nil, title: nil, body: nil, private: nil, options: nil)
          new.create_a_discussion_legacy(team_id, title, body, private, options)
        end

        def self.get_a_discussion_legacy(team_id: nil, discussion_number: nil, options: nil)
          new.get_a_discussion_legacy(team_id, discussion_number, options)
        end

        def self.update_a_discussion_legacy(team_id: nil, discussion_number: nil, title: nil, body: nil, options: nil)
          new.update_a_discussion_legacy(team_id, discussion_number, title, body, options)
        end

        def self.delete_a_discussion_legacy(team_id: nil, discussion_number: nil, options: nil)
          new.delete_a_discussion_legacy(team_id, discussion_number, options)
        end

        def self.get_an_external_group(org: nil, group_id: nil, options: nil)
          new.get_an_external_group(org, group_id, options)
        end

        def self.list_external_groups_in_an_organization(org: nil, options: nil)
          new.list_external_groups_in_an_organization(org, options)
        end

        def self.list_a_connection_between_an_external_group_and_a_team(org: nil, team_slug: nil, options: nil)
          new.list_a_connection_between_an_external_group_and_a_team(org, team_slug, options)
        end

        def self.update_the_connection_between_an_external_group_and_a_team(org: nil, team_slug: nil, group_id: nil, options: nil)
          new.update_the_connection_between_an_external_group_and_a_team(org, team_slug, group_id, options)
        end

        def self.remove_the_connection_between_an_external_group_and_a_team(org: nil, team_slug: nil, options: nil)
          new.remove_the_connection_between_an_external_group_and_a_team(org, team_slug, options)
        end

        def self.list_pending_team_invitations(org: nil, team_slug: nil, options: nil)
          new.list_pending_team_invitations(org, team_slug, options)
        end

        def self.list_team_members(org: nil, team_slug: nil, options: nil)
          new.list_team_members(org, team_slug, options)
        end

        def self.get_team_membership_for_a_user(org: nil, team_slug: nil, username: nil, options: nil)
          new.get_team_membership_for_a_user(org, team_slug, username, options)
        end

        def self.add_or_update_team_membership_for_a_user(org: nil, team_slug: nil, username: nil, role: nil, options: nil)
          new.add_or_update_team_membership_for_a_user(org, team_slug, username, role, options)
        end

        def self.remove_team_membership_for_a_user(org: nil, team_slug: nil, username: nil, options: nil)
          new.remove_team_membership_for_a_user(org, team_slug, username, options)
        end

        def self.list_pending_team_invitations_legacy(team_id: nil, options: nil)
          new.list_pending_team_invitations_legacy(team_id, options)
        end

        def self.list_team_members_legacy(team_id: nil, options: nil)
          new.list_team_members_legacy(team_id, options)
        end

        def self.get_team_member_legacy(team_id: nil, username: nil, options: nil)
          new.get_team_member_legacy(team_id, username, options)
        end

        def self.add_team_member_legacy(team_id: nil, username: nil, options: nil)
          new.add_team_member_legacy(team_id, username, options)
        end

        def self.remove_team_member_legacy(team_id: nil, username: nil, options: nil)
          new.remove_team_member_legacy(team_id, username, options)
        end

        def self.get_team_membership_for_a_user_legacy(team_id: nil, username: nil, options: nil)
          new.get_team_membership_for_a_user_legacy(team_id, username, options)
        end

        def self.add_or_update_team_membership_for_a_user_legacy(team_id: nil, username: nil, role: nil, options: nil)
          new.add_or_update_team_membership_for_a_user_legacy(team_id, username, role, options)
        end

        def self.remove_team_membership_for_a_user_legacy(team_id: nil, username: nil, options: nil)
          new.remove_team_membership_for_a_user_legacy(team_id, username, options)
        end

        def self.list_idp_groups_for_an_organization(org: nil, options: nil)
          new.list_idp_groups_for_an_organization(org, options)
        end

        def self.list_idp_groups_for_a_team(org: nil, team_slug: nil, options: nil)
          new.list_idp_groups_for_a_team(org, team_slug, options)
        end

        def self.create_or_update_idp_group_connections(org: nil, team_slug: nil, groups: nil, options: nil)
          new.create_or_update_idp_group_connections(org, team_slug, groups, options)
        end

        def self.list_idp_groups_for_a_team_legacy(team_id: nil, options: nil)
          new.list_idp_groups_for_a_team_legacy(team_id, options)
        end

        def self.create_or_update_idp_group_connections_legacy(team_id: nil, groups: nil, synced_at: nil, options: nil)
          new.create_or_update_idp_group_connections_legacy(team_id, groups, synced_at, options)
        end

        private

        # list teams
        #
        # @param org [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_teams(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a team
        #
        # @param org [String]
        # @param name [String] Required. The name of the team.
        # @param description [String] The description of the team.
        # @param maintainers [Array of strings] List GitHub IDs for organization members who will become team maintainers.
        # @param repo_names [Array of strings] The full name (e.g., "organization-name/repository-name") of repositories to add the team to.
        # @param privacy [String] The level of privacy this team should have. The options are:
        #   For a non-nested team:
        #   * secret - only visible to organization owners and members of this team.
        #   * closed - visible to all members of this organization.
        #   Default: secret
        #   For a parent or child team:
        #   * closed - visible to all members of this organization.
        #   Default for child team: closed
        # @param permission [String] Deprecated. The permission that new repositories will be added to the team with when none is specified. Can be one of:
        #   * pull - team members can pull, but not push to or administer newly-added repositories.
        #   * push - team members can pull and push, but not administer newly-added repositories.Default: pull
        # @param parent_team_id [Integer] The ID of a team to set as the parent team.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_a_team(org, name, description, maintainers, repo_names, privacy, permission, parent_team_id, _options)
          auth    = nil
          body    = { name: name, description: description, maintainers: maintainers, repo_names: repo_names, privacy: privacy, permission: permission, parent_team_id: parent_team_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a team by name
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_team_by_name(org, team_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param name [String] The name of the team.
        # @param description [String] The description of the team.
        # @param privacy [String] The level of privacy this team should have. Editing teams without specifying this parameter leaves privacy intact. When a team is nested, the privacy for parent teams cannot be secret. The options are:
        #   For a non-nested team:
        #   * secret - only visible to organization owners and members of this team.
        #   * closed - visible to all members of this organization.
        #   For a parent or child team:
        #   * closed - visible to all members of this organization.
        # @param permission [String] Deprecated. The permission that new repositories will be added to the team with when none is specified. Can be one of:
        #   * pull - team members can pull, but not push to or administer newly-added repositories.
        #   * push - team members can pull and push, but not administer newly-added repositories.
        #   * admin - team members can pull, push and administer newly-added repositories.Default: pull
        # @param parent_team_id [Integer or null] The ID of a team to set as the parent team.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_team(org, team_slug, name, description, privacy, permission, parent_team_id, _options)
          auth    = nil
          body    = { name: name, description: description, privacy: privacy, permission: permission, parent_team_id: parent_team_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_team(org, team_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team projects
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_projects(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check team permissions for a project
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param project_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def check_team_permissions_for_a_project(org, team_slug, project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team project permissions
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param project_id [Integer]
        # @param permission [String] The permission to grant to the team for this project. Can be one of:
        #   * read - team members can read, but not write to or administer this project.
        #   * write - team members can read and write, but not administer this project.
        #   * admin - team members can read, write and administer this project.
        # Default: the team's permission attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set Content-Length to zero when calling out to this endpoint. For more information, see "HTTP verbs."
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_project_permissions(org, team_slug, project_id, permission, _options)
          auth    = nil
          body    = { permission: permission }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a project from a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param project_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_a_project_from_a_team(org, team_slug, project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team repositories
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_repositories(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check team permissions for a repository
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param owner [String]
        # @param repo [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def check_team_permissions_for_a_repository(org, team_slug, owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team repository permissions
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param owner [String]
        # @param repo [String]
        # @param permission [String] The permission to grant the team on this repository. Can be one of:
        #   * pull - team members can pull, but not push to or administer this repository.
        #   * push - team members can pull and push, but not administer this repository.
        #   * admin - team members can pull, push and administer this repository.
        #   * maintain - team members can manage the repository without access to sensitive or destructive actions. Recommended for project managers. Only applies to repositories owned by organizations.
        #   * triage - team members can proactively manage issues and pull requests without write access. Recommended for contributors who triage a repository. Only applies to repositories owned by organizations.
        #   * custom repository role name - A custom repository role if the owning organization has defined any.
        #   If no permission is specified, the team's permission attribute will be used to determine what permission to grant the team on this repository.Default: push
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_repository_permissions(org, team_slug, owner, repo, permission, _options)
          auth    = nil
          body    = { permission: permission }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a repository from a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param owner [String]
        # @param repo [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_a_repository_from_a_team(org, team_slug, owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list child teams
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_child_teams(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a team legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_team_legacy(team_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a team legacy
        #
        # @param team_id [Integer]
        # @param name [String] Required. The name of the team.
        # @param description [String] The description of the team.
        # @param privacy [String] The level of privacy this team should have. Editing teams without specifying this parameter leaves privacy intact. The options are:
        #   For a non-nested team:
        #   * secret - only visible to organization owners and members of this team.
        #   * closed - visible to all members of this organization.
        #   For a parent or child team:
        #   * closed - visible to all members of this organization.
        # @param permission [String] Deprecated. The permission that new repositories will be added to the team with when none is specified. Can be one of:
        #   * pull - team members can pull, but not push to or administer newly-added repositories.
        #   * push - team members can pull and push, but not administer newly-added repositories.
        #   * admin - team members can pull, push and administer newly-added repositories.Default: pull
        # @param parent_team_id [Integer or null] The ID of a team to set as the parent team.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_team_legacy(team_id, name, description, privacy, permission, parent_team_id, _options)
          auth    = nil
          body    = { name: name, description: description, privacy: privacy, permission: permission, parent_team_id: parent_team_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a team legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_team_legacy(team_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team projects legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_projects_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check team permissions for a project legacy
        #
        # @param team_id [Integer]
        # @param project_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def check_team_permissions_for_a_project_legacy(team_id, project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team project permissions legacy
        #
        # @param team_id [Integer]
        # @param project_id [Integer]
        # @param permission [String] The permission to grant to the team for this project. Can be one of:
        #   * read - team members can read, but not write to or administer this project.
        #   * write - team members can read and write, but not administer this project.
        #   * admin - team members can read, write and administer this project.
        #   Default: the team's permission attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set Content-Length to zero when calling out to this endpoint. For more information, see "HTTP verbs."
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_project_permissions_legacy(team_id, project_id, permission, _options)
          auth    = nil
          body    = { permission: permission }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a project from a team legacy
        #
        # @param team_id [Integer]
        # @param project_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_a_project_from_a_team_legacy(team_id, project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team repositories legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_repositories_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/repos"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check team permissions for a repository legacy
        #
        # @param team_id [Integer]
        # @param owner [String]
        # @param repo [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def check_team_permissions_for_a_repository_legacy(team_id, owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team repository permissions legacy
        #
        # @param team_id [Integer]
        # @param owner [String]
        # @param repo [String]
        # @param permission [String] The permission to grant the team on this repository. Can be one of:
        #   * pull - team members can pull, but not push to or administer this repository.
        #   * push - team members can pull and push, but not administer this repository.
        #   * admin - team members can pull, push and administer this repository.
        #   If no permission is specified, the team's permission attribute will be used to determine what permission to grant the team on this repository.
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_repository_permissions_legacy(team_id, owner, repo, permission, _options)
          auth    = nil
          body    = { permission: permission }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a repository from a team legacy
        #
        # @param team_id [Integer]
        # @param owner [String]
        # @param repo [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_a_repository_from_a_team_legacy(team_id, owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/repos/#{owner}/#{repo}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list child teams legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_child_teams_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list teams for the authenticated user
        #
        # @params options [Hash]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_teams_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list discussion comments
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_discussion_comments(org, team_slug, discussion_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param body [String] Required. The discussion comment's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_a_discussion_comment(org, team_slug, discussion_number, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_discussion_comment(org, team_slug, discussion_number, comment_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        # @param body [String] Required. The discussion comment's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_discussion_comment(org, team_slug, discussion_number, comment_number, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a discussion comment
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_discussion_comment(org, team_slug, discussion_number, comment_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list discussion comments legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_discussion_comments_legacy(team_id, discussion_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param body [String] Required. The discussion comment's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_a_discussion_comment_legacy(team_id, discussion_number, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_discussion_comment_legacy(team_id, discussion_number, comment_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        # @param body [String] Required. The discussion comment's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_discussion_comment_legacy(team_id, discussion_number, comment_number, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a discussion comment legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param comment_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_discussion_comment_legacy(team_id, discussion_number, comment_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}/comments/#{comment_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list discussions
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_discussions(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { direction: options[:direction], per_page: options[:per_page], page: options[:page], pinned: options[:pinned] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param title [String] Required. The discussion post's title.
        # @param body [String] Required. The discussion post's body text.
        # @param private [Boolean] Private posts are only visible to team members, organization owners, and team maintainers. Public posts are visible to all members of the organization. Set to true to create a private post.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_a_discussion(org, team_slug, title, body, private, _options)
          auth    = nil
          body    = { title: title, body: body, private: private }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_discussion(org, team_slug, discussion_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        # @param title [String] The discussion post's title.
        # @param body [String] The discussion post's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_discussion(org, team_slug, discussion_number, title, body, _options)
          auth    = nil
          body    = { title: title, body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a discussion
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_discussion(org, team_slug, discussion_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list discussions legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_discussions_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { direction: options[:direction], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a discussion legacy
        #
        # @param team_id [Integer]
        # @param title [String] Required. The discussion post's title.
        # @param body [String] Required. The discussion post's body text.
        # @param private [Boolean] Private posts are only visible to team members, organization owners, and team maintainers. Public posts are visible to all members of the organization. Set to true to create a private post.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_a_discussion_legacy(team_id, title, body, private, _options)
          auth    = nil
          body    = { title: title, body: body, private: private }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a discussion legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_a_discussion_legacy(team_id, discussion_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a discussion legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        # @param title [String] The discussion post's title.
        # @param body [String] The discussion post's body text.
        #
        # @return TeamsResult, TeamsErrorResult
        def update_a_discussion_legacy(team_id, discussion_number, title, body, _options)
          auth    = nil
          body    = { title: title, body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a discussion legacy
        #
        # @param team_id [Integer]
        # @param discussion_number [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def delete_a_discussion_legacy(team_id, discussion_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/discussions/#{discussion_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an external group
        #
        # @param org [String]
        # @param group_id [Integer] group_id parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def get_an_external_group(org, group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/external-group/#{group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list external groups in an organization
        #
        # @param org [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_external_groups_in_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page], display_name: options[:display_name] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/external-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list a connection between an external group and a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_a_connection_between_an_external_group_and_a_team(org, team_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/external-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update the connection between an external group and a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param group_id [Integer] Required. External Group Id
        #
        # @return TeamsResult, TeamsErrorResult
        def update_the_connection_between_an_external_group_and_a_team(org, team_slug, group_id, _options)
          auth    = nil
          body    = { group_id: group_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/external-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove the connection between an external group and a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_the_connection_between_an_external_group_and_a_team(org, team_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/external-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list pending team invitations
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_pending_team_invitations(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team members
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_members(org, team_slug, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { role: options[:role], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/members"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get team membership for a user
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_team_membership_for_a_user(org, team_slug, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team membership for a user
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param username [String]
        # @param role [String] The role that this user should have in the team. Can be one of:
        #   * member - a normal member of the team.
        #   * maintainer - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.Default: member
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_membership_for_a_user(org, team_slug, username, role, _options)
          auth    = nil
          body    = { role: role }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove team membership for a user
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_team_membership_for_a_user(org, team_slug, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list pending team invitations legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_pending_team_invitations_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list team members legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_team_members_legacy(team_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { role: options[:role], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/members"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get team member legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_team_member_legacy(team_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add team member legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def add_team_member_legacy(team_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove team member legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_team_member_legacy(team_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get team membership for a user legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def get_team_membership_for_a_user_legacy(team_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add or update team membership for a user legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        # @param role [String] The role that this user should have in the team. Can be one of:
        #   * member - a normal member of the team.
        #   * maintainer - a team maintainer. Able to add/remove other team members, promote other team members to team maintainer, and edit the team's name and description.Default: member
        #
        # @return TeamsResult, TeamsErrorResult
        def add_or_update_team_membership_for_a_user_legacy(team_id, username, role, _options)
          auth    = nil
          body    = { role: role }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove team membership for a user legacy
        #
        # @param team_id [Integer]
        # @param username [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def remove_team_membership_for_a_user_legacy(team_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list idp groups for an organization
        #
        # @param org [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_idp_groups_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/team-sync/groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list idp groups for a team
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        #
        # @return TeamsResult, TeamsErrorResult
        def list_idp_groups_for_a_team(org, team_slug, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/team-sync/group-mappings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update idp group connections
        #
        # @param org [String]
        # @param team_slug [String] team_slug parameter
        # @param groups [Array of objects] The IdP groups you want to connect to a GitHub team. When updating, the new groups object will replace the original one. You must include any existing groups that you don't want to remove.
        #
        # @return TeamsResult, TeamsErrorResult
        def create_or_update_idp_group_connections(org, team_slug, groups, _options)
          auth    = nil
          body    = { groups: groups }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/teams/#{team_slug}/team-sync/group-mappings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list idp groups for a team legacy
        #
        # @param team_id [Integer]
        #
        # @return TeamsResult, TeamsErrorResult
        def list_idp_groups_for_a_team_legacy(team_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/team-sync/group-mappings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update idp group connections legacy
        #
        # @param team_id [Integer]
        # @param groups [Array of objects] Required. The IdP groups you want to connect to a GitHub team. When updating, the new groups object will replace the original one. You must include any existing groups that you don't want to remove.
        # @param synced_at [String]
        #
        # @return TeamsResult, TeamsErrorResult
        def create_or_update_idp_group_connections_legacy(team_id, groups, synced_at, _options)
          auth    = nil
          body    = { groups: groups, synced_at: synced_at }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/teams/#{team_id}/team-sync/group-mappings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            TeamsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            TeamsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
