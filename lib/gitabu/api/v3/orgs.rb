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
      # Class to display Orgs result
      class OrgsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class OrgsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Orgs endpoints.
      class Orgs
        def self.list_organizations(options: nil)
          new.list_organizations(options)
        end

        def self.get_an_organization(org: nil, options: nil)
          new.get_an_organization(org, options)
        end

        def self.update_an_organization(org: nil, billing_email: nil, company: nil, email: nil, twitter_username: nil, location: nil, name: nil, description: nil, has_organization_projects: nil, has_repository_projects: nil, default_repository_permission: nil, members_can_create_repositories: nil, members_can_create_internal_repositories: nil, members_can_create_private_repositories: nil, members_can_create_public_repositories: nil, members_allowed_repository_creation_type: nil, members_can_create_pages: nil, members_can_create_public_pages: nil, members_can_create_private_pages: nil, members_can_fork_private_repositories: nil, blog: nil, options: nil)
          new.update_an_organization(org, billing_email, company, email, twitter_username, location, name, description, has_organization_projects, has_repository_projects, default_repository_permission, members_can_create_repositories, members_can_create_internal_repositories, members_can_create_private_repositories, members_can_create_public_repositories, members_allowed_repository_creation_type, members_can_create_pages, members_can_create_public_pages, members_can_create_private_pages, members_can_fork_private_repositories, blog, options)
        end

        def self.get_the_audit_log_for_an_organization(org: nil, options: nil)
          new.get_the_audit_log_for_an_organization(org, options)
        end

        def self.list_saml_sso_authorizations_for_an_organization(org: nil, options: nil)
          new.list_saml_sso_authorizations_for_an_organization(org, options)
        end

        def self.remove_a_saml_sso_authorization_for_an_organization(org: nil, credential_id: nil, options: nil)
          new.remove_a_saml_sso_authorization_for_an_organization(org, credential_id, options)
        end

        def self.list_app_installations_for_an_organization(org: nil, options: nil)
          new.list_app_installations_for_an_organization(org, options)
        end

        def self.list_organizations_for_the_authenticated_user(options: nil)
          new.list_organizations_for_the_authenticated_user(options)
        end

        def self.list_organizations_for_a_user(username: nil, options: nil)
          new.list_organizations_for_a_user(username, options)
        end

        def self.list_users_blocked_by_an_organization(org: nil, options: nil)
          new.list_users_blocked_by_an_organization(org, options)
        end

        def self.check_if_a_user_is_blocked_by_an_organization(org: nil, username: nil, options: nil)
          new.check_if_a_user_is_blocked_by_an_organization(org, username, options)
        end

        def self.block_a_user_from_an_organization(org: nil, username: nil, options: nil)
          new.block_a_user_from_an_organization(org, username, options)
        end

        def self.unblock_a_user_from_an_organization(org: nil, username: nil, options: nil)
          new.unblock_a_user_from_an_organization(org, username, options)
        end

        def self.list_custom_repository_roles_in_an_organization(organization_id: nil, options: nil)
          new.list_custom_repository_roles_in_an_organization(organization_id, options)
        end

        def self.list_failed_organization_invitations(org: nil, options: nil)
          new.list_failed_organization_invitations(org, options)
        end

        def self.list_pending_organization_invitations(org: nil, options: nil)
          new.list_pending_organization_invitations(org, options)
        end

        def self.create_an_organization_invitation(org: nil, invitee_id: nil, email: nil, role: nil, team_ids: nil, options: nil)
          new.create_an_organization_invitation(org, invitee_id, email, role, team_ids, options)
        end

        def self.cancel_an_organization_invitation(org: nil, invitation_id: nil, options: nil)
          new.cancel_an_organization_invitation(org, invitation_id, options)
        end

        def self.list_organization_invitation_teams(org: nil, invitation_id: nil, options: nil)
          new.list_organization_invitation_teams(org, invitation_id, options)
        end

        def self.list_organization_members(org: nil, options: nil)
          new.list_organization_members(org, options)
        end

        def self.check_organization_membership_for_a_user(org: nil, username: nil, options: nil)
          new.check_organization_membership_for_a_user(org, username, options)
        end

        def self.remove_an_organization_member(org: nil, username: nil, options: nil)
          new.remove_an_organization_member(org, username, options)
        end

        def self.get_organization_membership_for_a_user(org: nil, username: nil, options: nil)
          new.get_organization_membership_for_a_user(org, username, options)
        end

        def self.set_organization_membership_for_a_user(org: nil, username: nil, role: nil, options: nil)
          new.set_organization_membership_for_a_user(org, username, role, options)
        end

        def self.remove_organization_membership_for_a_user(org: nil, username: nil, options: nil)
          new.remove_organization_membership_for_a_user(org, username, options)
        end

        def self.list_public_organization_members(org: nil, options: nil)
          new.list_public_organization_members(org, options)
        end

        def self.check_public_organization_membership_for_a_user(org: nil, username: nil, options: nil)
          new.check_public_organization_membership_for_a_user(org, username, options)
        end

        def self.set_public_organization_membership_for_the_authenticated_user(org: nil, username: nil, options: nil)
          new.set_public_organization_membership_for_the_authenticated_user(org, username, options)
        end

        def self.remove_public_organization_membership_for_the_authenticated_user(org: nil, username: nil, options: nil)
          new.remove_public_organization_membership_for_the_authenticated_user(org, username, options)
        end

        def self.list_organization_memberships_for_the_authenticated_user(options: nil)
          new.list_organization_memberships_for_the_authenticated_user(options)
        end

        def self.get_an_organization_membership_for_the_authenticated_user(org: nil, options: nil)
          new.get_an_organization_membership_for_the_authenticated_user(org, options)
        end

        def self.update_an_organization_membership_for_the_authenticated_user(org: nil, state: nil, options: nil)
          new.update_an_organization_membership_for_the_authenticated_user(org, state, options)
        end

        def self.list_outside_collaborators_for_an_organization(org: nil, options: nil)
          new.list_outside_collaborators_for_an_organization(org, options)
        end

        def self.convert_an_organization_member_to_outside_collaborator(org: nil, username: nil, options: nil)
          new.convert_an_organization_member_to_outside_collaborator(org, username, options)
        end

        def self.remove_outside_collaborator_from_an_organization(org: nil, username: nil, options: nil)
          new.remove_outside_collaborator_from_an_organization(org, username, options)
        end

        def self.list_organization_webhooks(org: nil, options: nil)
          new.list_organization_webhooks(org, options)
        end

        def self.create_an_organization_webhook(org: nil, name: nil, config: nil, events: nil, active: nil, options: nil)
          new.create_an_organization_webhook(org, name, config, events, active, options)
        end

        def self.get_an_organization_webhook(org: nil, hook_id: nil, options: nil)
          new.get_an_organization_webhook(org, hook_id, options)
        end

        def self.update_an_organization_webhook(org: nil, hook_id: nil, config: nil, events: nil, active: nil, name: nil, options: nil)
          new.update_an_organization_webhook(org, hook_id, config, events, active, name, options)
        end

        def self.delete_an_organization_webhook(org: nil, hook_id: nil, options: nil)
          new.delete_an_organization_webhook(org, hook_id, options)
        end

        def self.get_a_webhook_configuration_for_an_organization(org: nil, hook_id: nil, options: nil)
          new.get_a_webhook_configuration_for_an_organization(org, hook_id, options)
        end

        def self.update_a_webhook_configuration_for_an_organization(org: nil, hook_id: nil, url: nil, content_type: nil, secret: nil, insecure_ssl: nil, options: nil)
          new.update_a_webhook_configuration_for_an_organization(org, hook_id, url, content_type, secret, insecure_ssl, options)
        end

        def self.list_deliveries_for_an_organization_webhook(org: nil, hook_id: nil, options: nil)
          new.list_deliveries_for_an_organization_webhook(org, hook_id, options)
        end

        def self.get_a_webhook_delivery_for_an_organization_webhook(org: nil, hook_id: nil, delivery_id: nil, options: nil)
          new.get_a_webhook_delivery_for_an_organization_webhook(org, hook_id, delivery_id, options)
        end

        def self.redeliver_a_delivery_for_an_organization_webhook(org: nil, hook_id: nil, delivery_id: nil, options: nil)
          new.redeliver_a_delivery_for_an_organization_webhook(org, hook_id, delivery_id, options)
        end

        def self.ping_an_organization_webhook(org: nil, hook_id: nil, options: nil)
          new.ping_an_organization_webhook(org, hook_id, options)
        end

        private

        # list organizations
        #
        # @params options [Hash]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organizations(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/organizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an organization
        #
        # @param org [String]
        # @param billing_email [String] Billing email address. This address is not publicized.
        # @param company [String] The company name.
        # @param email [String] The publicly visible email address.
        # @param twitter_username [String] The Twitter username of the company.
        # @param location [String] The location.
        # @param name [String] The shorthand name of the company.
        # @param description [String] The description of the company.
        # @param has_organization_projects [Boolean] Toggles whether an organization can use organization projects.
        # @param has_repository_projects [Boolean] Toggles whether repositories that belong to the organization can use repository projects.
        # @param default_repository_permission [String] Default permission level members have for organization repositories:
        #   * read - can pull, but not push to or administer this repository.
        #   * write - can pull and push, but not administer this repository.
        #   * admin - can pull, push, and administer this repository.
        #   * none - no permissions granted by default.Default: read
        # @param members_can_create_repositories [Boolean] Toggles the ability of non-admin organization members to create repositories. Can be one of:
        #   * true - all organization members can create repositories.
        #   * false - only organization owners can create repositories.
        #   Default: true
        #   Note: A parameter can override this parameter. See members_allowed_repository_creation_type in this table for details. Note: A parameter can override this parameter. See members_allowed_repository_creation_type in this table for details.Default:
        # @param members_can_create_internal_repositories [Boolean] Toggles whether organization members can create internal repositories, which are visible to all enterprise members. You can only allow members to create internal repositories if your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. Can be one of:
        #   * true - all organization members can create internal repositories.
        #   * false - only organization owners can create internal repositories.
        #   Default: true. For more information, see "Restricting repository creation in your organization" in the GitHub Help documentation.
        # @param members_can_create_private_repositories [Boolean] Toggles whether organization members can create private repositories, which are visible to organization members with permission. Can be one of:
        #   * true - all organization members can create private repositories.
        #   * false - only organization owners can create private repositories.
        #   Default: true. For more information, see "Restricting repository creation in your organization" in the GitHub Help documentation.
        # @param members_can_create_public_repositories [Boolean] Toggles whether organization members can create public repositories, which are visible to anyone. Can be one of:
        #   * true - all organization members can create public repositories.
        #   * false - only organization owners can create public repositories.
        #   Default: true. For more information, see "Restricting repository creation in your organization" in the GitHub Help documentation.
        # @param members_allowed_repository_creation_type [String] Specifies which types of repositories non-admin organization members can create. Can be one of:
        #   * all - all organization members can create public and private repositories.
        #   * private - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.
        #   * none - only admin members can create repositories.
        #   Note: This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in members_can_create_repositories. See the parameter deprecation notice in the operation description for details.
        # @param members_can_create_pages [Boolean] Toggles whether organization members can create GitHub Pages sites. Can be one of:
        #   * true - all organization members can create GitHub Pages sites.
        #   * false - no organization members can create GitHub Pages sites. Existing published sites will not be impacted.Default:
        # @param members_can_create_public_pages [Boolean] Toggles whether organization members can create public GitHub Pages sites. Can be one of:
        #   * true - all organization members can create public GitHub Pages sites.
        #   * false - no organization members can create public GitHub Pages sites. Existing published sites will not be impacted.Default:
        # @param members_can_create_private_pages [Boolean] Toggles whether organization members can create private GitHub Pages sites. Can be one of:
        #   * true - all organization members can create private GitHub Pages sites.
        #   * false - no organization members can create private GitHub Pages sites. Existing published sites will not be impacted.Default:
        # @param members_can_fork_private_repositories [Boolean] Toggles whether organization members can fork private organization repositories. Can be one of:
        #   * true - all organization members can fork private repositories within the organization.
        #   * false - no organization members can fork private repositories within the organization.
        # @param blog [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def update_an_organization(org, billing_email, company, email, twitter_username, location, name, description, has_organization_projects, has_repository_projects, default_repository_permission, members_can_create_repositories, members_can_create_internal_repositories, members_can_create_private_repositories, members_can_create_public_repositories, members_allowed_repository_creation_type, members_can_create_pages, members_can_create_public_pages, members_can_create_private_pages, members_can_fork_private_repositories, blog, _options)
          auth    = nil
          body    = { billing_email: billing_email, company: company, email: email, twitter_username: twitter_username, location: location, name: name, description: description, has_organization_projects: has_organization_projects, has_repository_projects: has_repository_projects, default_repository_permission: default_repository_permission, members_can_create_repositories: members_can_create_repositories, members_can_create_internal_repositories: members_can_create_internal_repositories, members_can_create_private_repositories: members_can_create_private_repositories, members_can_create_public_repositories: members_can_create_public_repositories, members_allowed_repository_creation_type: members_allowed_repository_creation_type, members_can_create_pages: members_can_create_pages, members_can_create_public_pages: members_can_create_public_pages, members_can_create_private_pages: members_can_create_private_pages, members_can_fork_private_repositories: members_can_fork_private_repositories, blog: blog }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the audit log for an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_the_audit_log_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { phrase: options[:phrase], include: options[:include], after: options[:after], before: options[:before], order: options[:order], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/audit-log"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list saml sso authorizations for an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_saml_sso_authorizations_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page], login: options[:login] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/credential-authorizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a saml sso authorization for an organization
        #
        # @param org [String]
        # @param credential_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def remove_a_saml_sso_authorization_for_an_organization(org, credential_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/credential-authorizations/#{credential_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list app installations for an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_app_installations_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/installations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organizations for the authenticated user
        #
        # @params options [Hash]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organizations_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/orgs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organizations for a user
        #
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organizations_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/orgs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list users blocked by an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_users_blocked_by_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/blocks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a user is blocked by an organization
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def check_if_a_user_is_blocked_by_an_organization(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # block a user from an organization
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def block_a_user_from_an_organization(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unblock a user from an organization
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def unblock_a_user_from_an_organization(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list custom repository roles in an organization
        #
        # @param organization_id [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_custom_repository_roles_in_an_organization(organization_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/organizations/#{organization_id}/custom_roles"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list failed organization invitations
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_failed_organization_invitations(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/failed_invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list pending organization invitations
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_pending_organization_invitations(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an organization invitation
        #
        # @param org [String]
        # @param invitee_id [Integer] Required unless you provide email. GitHub user ID for the person you are inviting.
        # @param email [String] Required unless you provide invitee_id. Email address of the person you are inviting, which can be an existing GitHub user.
        # @param role [String] Specify role for new member. Can be one of:
        #   * admin - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.
        #   * direct_member - Non-owner organization members with ability to see other members and join teams by invitation.
        #   * billing_manager - Non-owner organization members with ability to manage the billing settings of your organization.Default: direct_member
        # @param team_ids [Array of integers] Specify IDs for the teams you want to invite new members to.
        #
        # @return OrgsResult, OrgsErrorResult
        def create_an_organization_invitation(org, invitee_id, email, role, team_ids, _options)
          auth    = nil
          body    = { invitee_id: invitee_id, email: email, role: role, team_ids: team_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # cancel an organization invitation
        #
        # @param org [String]
        # @param invitation_id [Integer] invitation_id parameter
        #
        # @return OrgsResult, OrgsErrorResult
        def cancel_an_organization_invitation(org, invitation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/invitations/#{invitation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization invitation teams
        #
        # @param org [String]
        # @param invitation_id [Integer] invitation_id parameter
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organization_invitation_teams(org, invitation_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/invitations/#{invitation_id}/teams"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization members
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organization_members(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], role: options[:role], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/members"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check organization membership for a user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def check_organization_membership_for_a_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove an organization member
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def remove_an_organization_member(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get organization membership for a user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_organization_membership_for_a_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set organization membership for a user
        #
        # @param org [String]
        # @param username [String]
        # @param role [String] The role to give the user in the organization. Can be one of:
        #   * admin - The user will become an owner of the organization.
        #   * member - The user will become a non-owner member of the organization.Default: member
        #
        # @return OrgsResult, OrgsErrorResult
        def set_organization_membership_for_a_user(org, username, role, _options)
          auth    = nil
          body    = { role: role }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove organization membership for a user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def remove_organization_membership_for_a_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/memberships/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public organization members
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_public_organization_members(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/public_members"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check public organization membership for a user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def check_public_organization_membership_for_a_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/public_members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set public organization membership for the authenticated user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def set_public_organization_membership_for_the_authenticated_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/public_members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove public organization membership for the authenticated user
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def remove_public_organization_membership_for_the_authenticated_user(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/public_members/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization memberships for the authenticated user
        #
        # @params options [Hash]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organization_memberships_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/memberships/orgs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization membership for the authenticated user
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_an_organization_membership_for_the_authenticated_user(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/memberships/orgs/#{org}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an organization membership for the authenticated user
        #
        # @param org [String]
        # @param state [String] Required. The state that the membership should be in. Only "active" will be accepted.
        #
        # @return OrgsResult, OrgsErrorResult
        def update_an_organization_membership_for_the_authenticated_user(org, state, _options)
          auth    = nil
          body    = { state: state }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/memberships/orgs/#{org}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list outside collaborators for an organization
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_outside_collaborators_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/outside_collaborators"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # convert an organization member to outside collaborator
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def convert_an_organization_member_to_outside_collaborator(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/outside_collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove outside collaborator from an organization
        #
        # @param org [String]
        # @param username [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def remove_outside_collaborator_from_an_organization(org, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/outside_collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization webhooks
        #
        # @param org [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_organization_webhooks(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an organization webhook
        #
        # @param org [String]
        # @param name [String] Required. Must be passed as "web".
        # @param config [Object] Required. Key/value pairs to provide settings for this webhook. These are defined below.
        # @param events [Array of strings] Determines what events the hook is triggered for.Default: push
        # @param active [Boolean] Determines if notifications are sent when the webhook is triggered. Set to true to send notifications.Default:
        #
        # @return OrgsResult, OrgsErrorResult
        def create_an_organization_webhook(org, name, config, events, active, _options)
          auth    = nil
          body    = { name: name, config: config, events: events, active: active }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_an_organization_webhook(org, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        # @param config [Object] Key/value pairs to provide settings for this webhook. These are defined below.
        # @param events [Array of strings] Determines what events the hook is triggered for.Default: push
        # @param active [Boolean] Determines if notifications are sent when the webhook is triggered. Set to true to send notifications.Default:
        # @param name [String]
        #
        # @return OrgsResult, OrgsErrorResult
        def update_an_organization_webhook(org, hook_id, config, events, active, name, _options)
          auth    = nil
          body    = { config: config, events: events, active: active, name: name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def delete_an_organization_webhook(org, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a webhook configuration for an organization
        #
        # @param org [String]
        # @param hook_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_a_webhook_configuration_for_an_organization(org, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a webhook configuration for an organization
        #
        # @param org [String]
        # @param hook_id [Integer]
        # @param url [String] The URL to which the payloads will be delivered.
        # @param content_type [String] The media type used to serialize the payloads. Supported values include json and form. The default is form.
        # @param secret [String] If provided, the secret will be used as the key to generate the HMAC hex digest value for delivery signature headers.
        # @param insecure_ssl [String or number or ] Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
        #
        # @return OrgsResult, OrgsErrorResult
        def update_a_webhook_configuration_for_an_organization(org, hook_id, url, content_type, secret, insecure_ssl, _options)
          auth    = nil
          body    = { url: url, content_type: content_type, secret: secret, insecure_ssl: insecure_ssl }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list deliveries for an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def list_deliveries_for_an_organization_webhook(org, hook_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], cursor: options[:cursor] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/deliveries"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a webhook delivery for an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        # @param delivery_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def get_a_webhook_delivery_for_an_organization_webhook(org, hook_id, delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/deliveries/#{delivery_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # redeliver a delivery for an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        # @param delivery_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def redeliver_a_delivery_for_an_organization_webhook(org, hook_id, delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/deliveries/#{delivery_id}/attempts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # ping an organization webhook
        #
        # @param org [String]
        # @param hook_id [Integer]
        #
        # @return OrgsResult, OrgsErrorResult
        def ping_an_organization_webhook(org, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/hooks/#{hook_id}/pings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            OrgsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            OrgsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
