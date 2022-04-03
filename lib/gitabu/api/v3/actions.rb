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
      # Class to display Actions result
      class ActionsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ActionsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Actions endpoints.
      class Actions
        def self.list_artifacts_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_artifacts_for_a_repository(owner, repo, options)
        end

        def self.get_an_artifact(owner: nil, repo: nil, artifact_id: nil, options: nil)
          new.get_an_artifact(owner, repo, artifact_id, options)
        end

        def self.delete_an_artifact(owner: nil, repo: nil, artifact_id: nil, options: nil)
          new.delete_an_artifact(owner, repo, artifact_id, options)
        end

        def self.download_an_artifact(owner: nil, repo: nil, artifact_id: nil, archive_format: nil, options: nil)
          new.download_an_artifact(owner, repo, artifact_id, archive_format, options)
        end

        def self.list_workflow_run_artifacts(owner: nil, repo: nil, run_id: nil, options: nil)
          new.list_workflow_run_artifacts(owner, repo, run_id, options)
        end

        def self.get_github_actions_cache_usage_for_an_enterprise(enterprise: nil, options: nil)
          new.get_github_actions_cache_usage_for_an_enterprise(enterprise, options)
        end

        def self.get_github_actions_cache_usage_for_an_organization(org: nil, options: nil)
          new.get_github_actions_cache_usage_for_an_organization(org, options)
        end

        def self.list_repositories_with_github_actions_cache_usage_for_an_organization(org: nil, options: nil)
          new.list_repositories_with_github_actions_cache_usage_for_an_organization(org, options)
        end

        def self.get_github_actions_cache_usage_for_a_repository(owner: nil, repo: nil, options: nil)
          new.get_github_actions_cache_usage_for_a_repository(owner, repo, options)
        end

        def self.get_github_actions_permissions_for_an_enterprise(enterprise: nil, options: nil)
          new.get_github_actions_permissions_for_an_enterprise(enterprise, options)
        end

        def self.set_github_actions_permissions_for_an_enterprise(enterprise: nil, enabled_organizations: nil, allowed_actions: nil, options: nil)
          new.set_github_actions_permissions_for_an_enterprise(enterprise, enabled_organizations, allowed_actions, options)
        end

        def self.list_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise: nil, options: nil)
          new.list_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise, options)
        end

        def self.set_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise: nil, selected_organization_ids: nil, options: nil)
          new.set_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise, selected_organization_ids, options)
        end

        def self.enable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise: nil, org_id: nil, options: nil)
          new.enable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise, org_id, options)
        end

        def self.disable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise: nil, org_id: nil, options: nil)
          new.disable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise, org_id, options)
        end

        def self.get_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise: nil, options: nil)
          new.get_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise, options)
        end

        def self.set_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise: nil, github_owned_allowed: nil, verified_allowed: nil, patterns_allowed: nil, options: nil)
          new.set_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise, github_owned_allowed, verified_allowed, patterns_allowed, options)
        end

        def self.get_github_actions_permissions_for_an_organization(org: nil, options: nil)
          new.get_github_actions_permissions_for_an_organization(org, options)
        end

        def self.set_github_actions_permissions_for_an_organization(org: nil, enabled_repositories: nil, allowed_actions: nil, options: nil)
          new.set_github_actions_permissions_for_an_organization(org, enabled_repositories, allowed_actions, options)
        end

        def self.list_selected_repositories_enabled_for_github_actions_in_an_organization(org: nil, options: nil)
          new.list_selected_repositories_enabled_for_github_actions_in_an_organization(org, options)
        end

        def self.set_selected_repositories_enabled_for_github_actions_in_an_organization(org: nil, selected_repository_ids: nil, options: nil)
          new.set_selected_repositories_enabled_for_github_actions_in_an_organization(org, selected_repository_ids, options)
        end

        def self.enable_a_selected_repository_for_github_actions_in_an_organization(org: nil, repository_id: nil, options: nil)
          new.enable_a_selected_repository_for_github_actions_in_an_organization(org, repository_id, options)
        end

        def self.disable_a_selected_repository_for_github_actions_in_an_organization(org: nil, repository_id: nil, options: nil)
          new.disable_a_selected_repository_for_github_actions_in_an_organization(org, repository_id, options)
        end

        def self.get_allowed_actions_and_reusable_workflows_for_an_organization(org: nil, options: nil)
          new.get_allowed_actions_and_reusable_workflows_for_an_organization(org, options)
        end

        def self.set_allowed_actions_and_reusable_workflows_for_an_organization(org: nil, github_owned_allowed: nil, verified_allowed: nil, patterns_allowed: nil, options: nil)
          new.set_allowed_actions_and_reusable_workflows_for_an_organization(org, github_owned_allowed, verified_allowed, patterns_allowed, options)
        end

        def self.get_default_workflow_permissions(org: nil, options: nil)
          new.get_default_workflow_permissions(org, options)
        end

        def self.set_default_workflow_permissions(org: nil, default_workflow_permissions: nil, can_approve_pull_request_reviews: nil, options: nil)
          new.set_default_workflow_permissions(org, default_workflow_permissions, can_approve_pull_request_reviews, options)
        end

        def self.get_github_actions_permissions_for_a_repository(owner: nil, repo: nil, options: nil)
          new.get_github_actions_permissions_for_a_repository(owner, repo, options)
        end

        def self.set_github_actions_permissions_for_a_repository(owner: nil, repo: nil, enabled: nil, allowed_actions: nil, options: nil)
          new.set_github_actions_permissions_for_a_repository(owner, repo, enabled, allowed_actions, options)
        end

        def self.get_the_level_of_access_for_workflows_outside_of_the_repository(owner: nil, repo: nil, options: nil)
          new.get_the_level_of_access_for_workflows_outside_of_the_repository(owner, repo, options)
        end

        def self.set_the_level_of_access_for_workflows_outside_of_the_repository(owner: nil, repo: nil, access_level: nil, options: nil)
          new.set_the_level_of_access_for_workflows_outside_of_the_repository(owner, repo, access_level, options)
        end

        def self.get_allowed_actions_and_reusable_workflows_for_a_repository(owner: nil, repo: nil, options: nil)
          new.get_allowed_actions_and_reusable_workflows_for_a_repository(owner, repo, options)
        end

        def self.set_allowed_actions_and_reusable_workflows_for_a_repository(owner: nil, repo: nil, github_owned_allowed: nil, verified_allowed: nil, patterns_allowed: nil, options: nil)
          new.set_allowed_actions_and_reusable_workflows_for_a_repository(owner, repo, github_owned_allowed, verified_allowed, patterns_allowed, options)
        end

        def self.list_organization_secrets(org: nil, options: nil)
          new.list_organization_secrets(org, options)
        end

        def self.get_an_organization_public_key(org: nil, options: nil)
          new.get_an_organization_public_key(org, options)
        end

        def self.get_an_organization_secret(org: nil, secret_name: nil, options: nil)
          new.get_an_organization_secret(org, secret_name, options)
        end

        def self.create_or_update_an_organization_secret(org: nil, secret_name: nil, encrypted_value: nil, key_id: nil, visibility: nil, selected_repository_ids: nil, options: nil)
          new.create_or_update_an_organization_secret(org, secret_name, encrypted_value, key_id, visibility, selected_repository_ids, options)
        end

        def self.delete_an_organization_secret(org: nil, secret_name: nil, options: nil)
          new.delete_an_organization_secret(org, secret_name, options)
        end

        def self.list_selected_repositories_for_an_organization_secret(org: nil, secret_name: nil, options: nil)
          new.list_selected_repositories_for_an_organization_secret(org, secret_name, options)
        end

        def self.set_selected_repositories_for_an_organization_secret(org: nil, secret_name: nil, selected_repository_ids: nil, options: nil)
          new.set_selected_repositories_for_an_organization_secret(org, secret_name, selected_repository_ids, options)
        end

        def self.add_selected_repository_to_an_organization_secret(org: nil, secret_name: nil, repository_id: nil, options: nil)
          new.add_selected_repository_to_an_organization_secret(org, secret_name, repository_id, options)
        end

        def self.remove_selected_repository_from_an_organization_secret(org: nil, secret_name: nil, repository_id: nil, options: nil)
          new.remove_selected_repository_from_an_organization_secret(org, secret_name, repository_id, options)
        end

        def self.list_repository_secrets(owner: nil, repo: nil, options: nil)
          new.list_repository_secrets(owner, repo, options)
        end

        def self.get_a_repository_public_key(owner: nil, repo: nil, options: nil)
          new.get_a_repository_public_key(owner, repo, options)
        end

        def self.get_a_repository_secret(owner: nil, repo: nil, secret_name: nil, options: nil)
          new.get_a_repository_secret(owner, repo, secret_name, options)
        end

        def self.create_or_update_a_repository_secret(owner: nil, repo: nil, secret_name: nil, encrypted_value: nil, key_id: nil, options: nil)
          new.create_or_update_a_repository_secret(owner, repo, secret_name, encrypted_value, key_id, options)
        end

        def self.delete_a_repository_secret(owner: nil, repo: nil, secret_name: nil, options: nil)
          new.delete_a_repository_secret(owner, repo, secret_name, options)
        end

        def self.list_environment_secrets(repository_id: nil, environment_name: nil, options: nil)
          new.list_environment_secrets(repository_id, environment_name, options)
        end

        def self.get_an_environment_public_key(repository_id: nil, environment_name: nil, options: nil)
          new.get_an_environment_public_key(repository_id, environment_name, options)
        end

        def self.get_an_environment_secret(repository_id: nil, environment_name: nil, secret_name: nil, options: nil)
          new.get_an_environment_secret(repository_id, environment_name, secret_name, options)
        end

        def self.create_or_update_an_environment_secret(repository_id: nil, environment_name: nil, secret_name: nil, encrypted_value: nil, key_id: nil, options: nil)
          new.create_or_update_an_environment_secret(repository_id, environment_name, secret_name, encrypted_value, key_id, options)
        end

        def self.delete_an_environment_secret(repository_id: nil, environment_name: nil, secret_name: nil, options: nil)
          new.delete_an_environment_secret(repository_id, environment_name, secret_name, options)
        end

        def self.list_self_hosted_runner_groups_for_an_enterprise(enterprise: nil, options: nil)
          new.list_self_hosted_runner_groups_for_an_enterprise(enterprise, options)
        end

        def self.create_a_self_hosted_runner_group_for_an_enterprise(enterprise: nil, name: nil, visibility: nil, selected_organization_ids: nil, runners: nil, allows_public_repositories: nil, options: nil)
          new.create_a_self_hosted_runner_group_for_an_enterprise(enterprise, name, visibility, selected_organization_ids, runners, allows_public_repositories, options)
        end

        def self.get_a_self_hosted_runner_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, options: nil)
          new.get_a_self_hosted_runner_group_for_an_enterprise(enterprise, runner_group_id, options)
        end

        def self.update_a_self_hosted_runner_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, name: nil, visibility: nil, allows_public_repositories: nil, options: nil)
          new.update_a_self_hosted_runner_group_for_an_enterprise(enterprise, runner_group_id, name, visibility, allows_public_repositories, options)
        end

        def self.delete_a_self_hosted_runner_group_from_an_enterprise(enterprise: nil, runner_group_id: nil, options: nil)
          new.delete_a_self_hosted_runner_group_from_an_enterprise(enterprise, runner_group_id, options)
        end

        def self.list_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise: nil, runner_group_id: nil, options: nil)
          new.list_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, options)
        end

        def self.set_organization_access_for_a_self_hosted_runner_group_in_an_enterprise(enterprise: nil, runner_group_id: nil, selected_organization_ids: nil, options: nil)
          new.set_organization_access_for_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, selected_organization_ids, options)
        end

        def self.add_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise: nil, runner_group_id: nil, org_id: nil, options: nil)
          new.add_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, org_id, options)
        end

        def self.remove_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise: nil, runner_group_id: nil, org_id: nil, options: nil)
          new.remove_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, org_id, options)
        end

        def self.list_self_hosted_runners_in_a_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, options: nil)
          new.list_self_hosted_runners_in_a_group_for_an_enterprise(enterprise, runner_group_id, options)
        end

        def self.set_self_hosted_runners_in_a_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, runners: nil, options: nil)
          new.set_self_hosted_runners_in_a_group_for_an_enterprise(enterprise, runner_group_id, runners, options)
        end

        def self.add_a_self_hosted_runner_to_a_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, runner_id: nil, options: nil)
          new.add_a_self_hosted_runner_to_a_group_for_an_enterprise(enterprise, runner_group_id, runner_id, options)
        end

        def self.remove_a_self_hosted_runner_from_a_group_for_an_enterprise(enterprise: nil, runner_group_id: nil, runner_id: nil, options: nil)
          new.remove_a_self_hosted_runner_from_a_group_for_an_enterprise(enterprise, runner_group_id, runner_id, options)
        end

        def self.list_self_hosted_runner_groups_for_an_organization(org: nil, options: nil)
          new.list_self_hosted_runner_groups_for_an_organization(org, options)
        end

        def self.create_a_self_hosted_runner_group_for_an_organization(org: nil, name: nil, visibility: nil, selected_repository_ids: nil, runners: nil, allows_public_repositories: nil, options: nil)
          new.create_a_self_hosted_runner_group_for_an_organization(org, name, visibility, selected_repository_ids, runners, allows_public_repositories, options)
        end

        def self.get_a_self_hosted_runner_group_for_an_organization(org: nil, runner_group_id: nil, options: nil)
          new.get_a_self_hosted_runner_group_for_an_organization(org, runner_group_id, options)
        end

        def self.update_a_self_hosted_runner_group_for_an_organization(org: nil, runner_group_id: nil, name: nil, visibility: nil, allows_public_repositories: nil, options: nil)
          new.update_a_self_hosted_runner_group_for_an_organization(org, runner_group_id, name, visibility, allows_public_repositories, options)
        end

        def self.delete_a_self_hosted_runner_group_from_an_organization(org: nil, runner_group_id: nil, options: nil)
          new.delete_a_self_hosted_runner_group_from_an_organization(org, runner_group_id, options)
        end

        def self.list_repository_access_to_a_self_hosted_runner_group_in_an_organization(org: nil, runner_group_id: nil, options: nil)
          new.list_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, options)
        end

        def self.set_repository_access_for_a_self_hosted_runner_group_in_an_organization(org: nil, runner_group_id: nil, selected_repository_ids: nil, options: nil)
          new.set_repository_access_for_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, selected_repository_ids, options)
        end

        def self.add_repository_access_to_a_self_hosted_runner_group_in_an_organization(org: nil, runner_group_id: nil, repository_id: nil, options: nil)
          new.add_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, repository_id, options)
        end

        def self.remove_repository_access_to_a_self_hosted_runner_group_in_an_organization(org: nil, runner_group_id: nil, repository_id: nil, options: nil)
          new.remove_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, repository_id, options)
        end

        def self.list_self_hosted_runners_in_a_group_for_an_organization(org: nil, runner_group_id: nil, options: nil)
          new.list_self_hosted_runners_in_a_group_for_an_organization(org, runner_group_id, options)
        end

        def self.set_self_hosted_runners_in_a_group_for_an_organization(org: nil, runner_group_id: nil, runners: nil, options: nil)
          new.set_self_hosted_runners_in_a_group_for_an_organization(org, runner_group_id, runners, options)
        end

        def self.add_a_self_hosted_runner_to_a_group_for_an_organization(org: nil, runner_group_id: nil, runner_id: nil, options: nil)
          new.add_a_self_hosted_runner_to_a_group_for_an_organization(org, runner_group_id, runner_id, options)
        end

        def self.remove_a_self_hosted_runner_from_a_group_for_an_organization(org: nil, runner_group_id: nil, runner_id: nil, options: nil)
          new.remove_a_self_hosted_runner_from_a_group_for_an_organization(org, runner_group_id, runner_id, options)
        end

        def self.list_self_hosted_runners_for_an_enterprise(enterprise: nil, options: nil)
          new.list_self_hosted_runners_for_an_enterprise(enterprise, options)
        end

        def self.list_runner_applications_for_an_enterprise(enterprise: nil, options: nil)
          new.list_runner_applications_for_an_enterprise(enterprise, options)
        end

        def self.create_a_registration_token_for_an_enterprise(enterprise: nil, options: nil)
          new.create_a_registration_token_for_an_enterprise(enterprise, options)
        end

        def self.create_a_remove_token_for_an_enterprise(enterprise: nil, options: nil)
          new.create_a_remove_token_for_an_enterprise(enterprise, options)
        end

        def self.get_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, options: nil)
          new.get_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, options)
        end

        def self.delete_a_self_hosted_runner_from_an_enterprise(enterprise: nil, runner_id: nil, options: nil)
          new.delete_a_self_hosted_runner_from_an_enterprise(enterprise, runner_id, options)
        end

        def self.list_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, options: nil)
          new.list_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, options)
        end

        def self.add_custom_labels_to_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, labels: nil, options: nil)
          new.add_custom_labels_to_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, labels, options)
        end

        def self.set_custom_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, labels: nil, options: nil)
          new.set_custom_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, labels, options)
        end

        def self.remove_all_custom_labels_from_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, options: nil)
          new.remove_all_custom_labels_from_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, options)
        end

        def self.remove_a_custom_label_from_a_self_hosted_runner_for_an_enterprise(enterprise: nil, runner_id: nil, name: nil, options: nil)
          new.remove_a_custom_label_from_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, name, options)
        end

        def self.list_self_hosted_runners_for_an_organization(org: nil, options: nil)
          new.list_self_hosted_runners_for_an_organization(org, options)
        end

        def self.list_runner_applications_for_an_organization(org: nil, options: nil)
          new.list_runner_applications_for_an_organization(org, options)
        end

        def self.create_a_registration_token_for_an_organization(org: nil, options: nil)
          new.create_a_registration_token_for_an_organization(org, options)
        end

        def self.create_a_remove_token_for_an_organization(org: nil, options: nil)
          new.create_a_remove_token_for_an_organization(org, options)
        end

        def self.get_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, options: nil)
          new.get_a_self_hosted_runner_for_an_organization(org, runner_id, options)
        end

        def self.delete_a_self_hosted_runner_from_an_organization(org: nil, runner_id: nil, options: nil)
          new.delete_a_self_hosted_runner_from_an_organization(org, runner_id, options)
        end

        def self.list_labels_for_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, options: nil)
          new.list_labels_for_a_self_hosted_runner_for_an_organization(org, runner_id, options)
        end

        def self.add_custom_labels_to_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, labels: nil, options: nil)
          new.add_custom_labels_to_a_self_hosted_runner_for_an_organization(org, runner_id, labels, options)
        end

        def self.set_custom_labels_for_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, labels: nil, options: nil)
          new.set_custom_labels_for_a_self_hosted_runner_for_an_organization(org, runner_id, labels, options)
        end

        def self.remove_all_custom_labels_from_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, options: nil)
          new.remove_all_custom_labels_from_a_self_hosted_runner_for_an_organization(org, runner_id, options)
        end

        def self.remove_a_custom_label_from_a_self_hosted_runner_for_an_organization(org: nil, runner_id: nil, name: nil, options: nil)
          new.remove_a_custom_label_from_a_self_hosted_runner_for_an_organization(org, runner_id, name, options)
        end

        def self.list_self_hosted_runners_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_self_hosted_runners_for_a_repository(owner, repo, options)
        end

        def self.list_runner_applications_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_runner_applications_for_a_repository(owner, repo, options)
        end

        def self.create_a_registration_token_for_a_repository(owner: nil, repo: nil, options: nil)
          new.create_a_registration_token_for_a_repository(owner, repo, options)
        end

        def self.create_a_remove_token_for_a_repository(owner: nil, repo: nil, options: nil)
          new.create_a_remove_token_for_a_repository(owner, repo, options)
        end

        def self.get_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, options: nil)
          new.get_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, options)
        end

        def self.delete_a_self_hosted_runner_from_a_repository(owner: nil, repo: nil, runner_id: nil, options: nil)
          new.delete_a_self_hosted_runner_from_a_repository(owner, repo, runner_id, options)
        end

        def self.list_labels_for_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, options: nil)
          new.list_labels_for_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, options)
        end

        def self.add_custom_labels_to_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, labels: nil, options: nil)
          new.add_custom_labels_to_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, labels, options)
        end

        def self.set_custom_labels_for_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, labels: nil, options: nil)
          new.set_custom_labels_for_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, labels, options)
        end

        def self.remove_all_custom_labels_from_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, options: nil)
          new.remove_all_custom_labels_from_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, options)
        end

        def self.remove_a_custom_label_from_a_self_hosted_runner_for_a_repository(owner: nil, repo: nil, runner_id: nil, name: nil, options: nil)
          new.remove_a_custom_label_from_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, name, options)
        end

        def self.get_a_job_for_a_workflow_run(owner: nil, repo: nil, job_id: nil, options: nil)
          new.get_a_job_for_a_workflow_run(owner, repo, job_id, options)
        end

        def self.download_job_logs_for_a_workflow_run(owner: nil, repo: nil, job_id: nil, options: nil)
          new.download_job_logs_for_a_workflow_run(owner, repo, job_id, options)
        end

        def self.list_jobs_for_a_workflow_run_attempt(owner: nil, repo: nil, run_id: nil, attempt_number: nil, options: nil)
          new.list_jobs_for_a_workflow_run_attempt(owner, repo, run_id, attempt_number, options)
        end

        def self.list_jobs_for_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.list_jobs_for_a_workflow_run(owner, repo, run_id, options)
        end

        def self.re_run_a_job_from_a_workflow_run(owner: nil, repo: nil, job_id: nil, options: nil)
          new.re_run_a_job_from_a_workflow_run(owner, repo, job_id, options)
        end

        def self.list_workflow_runs_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_workflow_runs_for_a_repository(owner, repo, options)
        end

        def self.get_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.get_a_workflow_run(owner, repo, run_id, options)
        end

        def self.delete_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.delete_a_workflow_run(owner, repo, run_id, options)
        end

        def self.get_the_review_history_for_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.get_the_review_history_for_a_workflow_run(owner, repo, run_id, options)
        end

        def self.approve_a_workflow_run_for_a_fork_pull_request(owner: nil, repo: nil, run_id: nil, options: nil)
          new.approve_a_workflow_run_for_a_fork_pull_request(owner, repo, run_id, options)
        end

        def self.get_a_workflow_run_attempt(owner: nil, repo: nil, run_id: nil, attempt_number: nil, options: nil)
          new.get_a_workflow_run_attempt(owner, repo, run_id, attempt_number, options)
        end

        def self.download_workflow_run_attempt_logs(owner: nil, repo: nil, run_id: nil, attempt_number: nil, options: nil)
          new.download_workflow_run_attempt_logs(owner, repo, run_id, attempt_number, options)
        end

        def self.cancel_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.cancel_a_workflow_run(owner, repo, run_id, options)
        end

        def self.download_workflow_run_logs(owner: nil, repo: nil, run_id: nil, options: nil)
          new.download_workflow_run_logs(owner, repo, run_id, options)
        end

        def self.delete_workflow_run_logs(owner: nil, repo: nil, run_id: nil, options: nil)
          new.delete_workflow_run_logs(owner, repo, run_id, options)
        end

        def self.get_pending_deployments_for_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.get_pending_deployments_for_a_workflow_run(owner, repo, run_id, options)
        end

        def self.review_pending_deployments_for_a_workflow_run(owner: nil, repo: nil, run_id: nil, environment_ids: nil, state: nil, comment: nil, options: nil)
          new.review_pending_deployments_for_a_workflow_run(owner, repo, run_id, environment_ids, state, comment, options)
        end

        def self.re_run_a_workflow(owner: nil, repo: nil, run_id: nil, options: nil)
          new.re_run_a_workflow(owner, repo, run_id, options)
        end

        def self.re_run_failed_jobs_from_a_workflow_run(owner: nil, repo: nil, run_id: nil, options: nil)
          new.re_run_failed_jobs_from_a_workflow_run(owner, repo, run_id, options)
        end

        def self.get_workflow_run_usage(owner: nil, repo: nil, run_id: nil, options: nil)
          new.get_workflow_run_usage(owner, repo, run_id, options)
        end

        def self.list_workflow_runs(owner: nil, repo: nil, workflow_id: nil, options: nil)
          new.list_workflow_runs(owner, repo, workflow_id, options)
        end

        def self.list_repository_workflows(owner: nil, repo: nil, options: nil)
          new.list_repository_workflows(owner, repo, options)
        end

        def self.get_a_workflow(owner: nil, repo: nil, workflow_id: nil, options: nil)
          new.get_a_workflow(owner, repo, workflow_id, options)
        end

        def self.disable_a_workflow(owner: nil, repo: nil, workflow_id: nil, options: nil)
          new.disable_a_workflow(owner, repo, workflow_id, options)
        end

        def self.create_a_workflow_dispatch_event(owner: nil, repo: nil, workflow_id: nil, ref: nil, inputs: nil, options: nil)
          new.create_a_workflow_dispatch_event(owner, repo, workflow_id, ref, inputs, options)
        end

        def self.enable_a_workflow(owner: nil, repo: nil, workflow_id: nil, options: nil)
          new.enable_a_workflow(owner, repo, workflow_id, options)
        end

        def self.get_workflow_usage(owner: nil, repo: nil, workflow_id: nil, options: nil)
          new.get_workflow_usage(owner, repo, workflow_id, options)
        end

        private

        # list artifacts for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_artifacts_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/artifacts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an artifact
        #
        # @param owner [String]
        # @param repo [String]
        # @param artifact_id [Integer] artifact_id parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def get_an_artifact(owner, repo, artifact_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/artifacts/#{artifact_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an artifact
        #
        # @param owner [String]
        # @param repo [String]
        # @param artifact_id [Integer] artifact_id parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_an_artifact(owner, repo, artifact_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/artifacts/#{artifact_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download an artifact
        #
        # @param owner [String]
        # @param repo [String]
        # @param artifact_id [Integer] artifact_id parameter
        # @param archive_format [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def download_an_artifact(owner, repo, artifact_id, archive_format, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/artifacts/#{artifact_id}/#{archive_format}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list workflow run artifacts
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_workflow_run_artifacts(owner, repo, run_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/artifacts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions cache usage for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_cache_usage_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/cache/usage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions cache usage for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_cache_usage_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/cache/usage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories with github actions cache usage for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_repositories_with_github_actions_cache_usage_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/cache/usage-by-repository"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions cache usage for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_cache_usage_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/cache/usage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions permissions for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_permissions_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set github actions permissions for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param enabled_organizations [String] Required. The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: all, none, or selected.
        # @param allowed_actions [String] The permissions policy that controls the actions and reusable workflows that are allowed to run. Can be one of: all, local_only, or selected.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_github_actions_permissions_for_an_enterprise(enterprise, enabled_organizations, allowed_actions, _options)
          auth    = nil
          body    = { enabled_organizations: enabled_organizations, allowed_actions: allowed_actions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list selected organizations enabled for github actions in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/organizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set selected organizations enabled for github actions in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param selected_organization_ids [Array of integers] Required. List of organization IDs to enable for GitHub Actions.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_selected_organizations_enabled_for_github_actions_in_an_enterprise(enterprise, selected_organization_ids, _options)
          auth    = nil
          body    = { selected_organization_ids: selected_organization_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/organizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable a selected organization for github actions in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param org_id [Integer] Unique identifier of an organization.
        #
        # @return ActionsResult, ActionsErrorResult
        def enable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise, org_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/organizations/#{org_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable a selected organization for github actions in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param org_id [Integer] Unique identifier of an organization.
        #
        # @return ActionsResult, ActionsErrorResult
        def disable_a_selected_organization_for_github_actions_in_an_enterprise(enterprise, org_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/organizations/#{org_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get allowed actions and reusable workflows for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set allowed actions and reusable workflows for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param github_owned_allowed [Boolean] Whether GitHub-owned actions are allowed. For example, this includes the actions in the actions organization.
        # @param verified_allowed [Boolean] Whether actions from GitHub Marketplace verified creators are allowed. Set to true to allow all actions by GitHub Marketplace verified creators.
        # @param patterns_allowed [Array of strings] Specifies a list of string-matching patterns to allow specific action(s) and reusable workflow(s). Wildcards, tags, and SHAs are allowed. For example, monalisa/octocat@*, monalisa/octocat@v2, monalisa/*."
        #
        # @return ActionsResult, ActionsErrorResult
        def set_allowed_actions_and_reusable_workflows_for_an_enterprise(enterprise, github_owned_allowed, verified_allowed, patterns_allowed, _options)
          auth    = nil
          body    = { github_owned_allowed: github_owned_allowed, verified_allowed: verified_allowed, patterns_allowed: patterns_allowed }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions permissions for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_permissions_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set github actions permissions for an organization
        #
        # @param org [String]
        # @param enabled_repositories [String] Required. The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: all, none, or selected.
        # @param allowed_actions [String] The permissions policy that controls the actions and reusable workflows that are allowed to run. Can be one of: all, local_only, or selected.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_github_actions_permissions_for_an_organization(org, enabled_repositories, allowed_actions, _options)
          auth    = nil
          body    = { enabled_repositories: enabled_repositories, allowed_actions: allowed_actions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list selected repositories enabled for github actions in an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_selected_repositories_enabled_for_github_actions_in_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set selected repositories enabled for github actions in an organization
        #
        # @param org [String]
        # @param selected_repository_ids [Array of integers] Required. List of repository IDs to enable for GitHub Actions.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_selected_repositories_enabled_for_github_actions_in_an_organization(org, selected_repository_ids, _options)
          auth    = nil
          body    = { selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable a selected repository for github actions in an organization
        #
        # @param org [String]
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def enable_a_selected_repository_for_github_actions_in_an_organization(org, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable a selected repository for github actions in an organization
        #
        # @param org [String]
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def disable_a_selected_repository_for_github_actions_in_an_organization(org, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get allowed actions and reusable workflows for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_allowed_actions_and_reusable_workflows_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set allowed actions and reusable workflows for an organization
        #
        # @param org [String]
        # @param github_owned_allowed [Boolean] Whether GitHub-owned actions are allowed. For example, this includes the actions in the actions organization.
        # @param verified_allowed [Boolean] Whether actions from GitHub Marketplace verified creators are allowed. Set to true to allow all actions by GitHub Marketplace verified creators.
        # @param patterns_allowed [Array of strings] Specifies a list of string-matching patterns to allow specific action(s) and reusable workflow(s). Wildcards, tags, and SHAs are allowed. For example, monalisa/octocat@*, monalisa/octocat@v2, monalisa/*."
        #
        # @return ActionsResult, ActionsErrorResult
        def set_allowed_actions_and_reusable_workflows_for_an_organization(org, github_owned_allowed, verified_allowed, patterns_allowed, _options)
          auth    = nil
          body    = { github_owned_allowed: github_owned_allowed, verified_allowed: verified_allowed, patterns_allowed: patterns_allowed }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get default workflow permissions
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_default_workflow_permissions(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/workflow"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set default workflow permissions
        #
        # @param org [String]
        # @param default_workflow_permissions [String] The default workflow permissions granted to the GITHUB_TOKEN when running workflows in an organization.
        # @param can_approve_pull_request_reviews [Boolean] Whether GitHub Actions can submit approving pull request reviews.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_default_workflow_permissions(org, default_workflow_permissions, can_approve_pull_request_reviews, _options)
          auth    = nil
          body    = { default_workflow_permissions: default_workflow_permissions, can_approve_pull_request_reviews: can_approve_pull_request_reviews }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/permissions/workflow"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions permissions for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_github_actions_permissions_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set github actions permissions for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param enabled [Boolean] Required. Whether GitHub Actions is enabled on the repository.
        # @param allowed_actions [String] The permissions policy that controls the actions and reusable workflows that are allowed to run. Can be one of: all, local_only, or selected.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_github_actions_permissions_for_a_repository(owner, repo, enabled, allowed_actions, _options)
          auth    = nil
          body    = { enabled: enabled, allowed_actions: allowed_actions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the level of access for workflows outside of the repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_the_level_of_access_for_workflows_outside_of_the_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions/access"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set the level of access for workflows outside of the repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param access_level [String] Required. Defines the level of access that workflows outside of the repository have to actions and reusable workflows within the repository. none means access is only possible from workflows in this repository. Can be one of none, organization, enterprise.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_the_level_of_access_for_workflows_outside_of_the_repository(owner, repo, access_level, _options)
          auth    = nil
          body    = { access_level: access_level }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions/access"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get allowed actions and reusable workflows for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_allowed_actions_and_reusable_workflows_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set allowed actions and reusable workflows for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param github_owned_allowed [Boolean] Whether GitHub-owned actions are allowed. For example, this includes the actions in the actions organization.
        # @param verified_allowed [Boolean] Whether actions from GitHub Marketplace verified creators are allowed. Set to true to allow all actions by GitHub Marketplace verified creators.
        # @param patterns_allowed [Array of strings] Specifies a list of string-matching patterns to allow specific action(s) and reusable workflow(s). Wildcards, tags, and SHAs are allowed. For example, monalisa/octocat@*, monalisa/octocat@v2, monalisa/*."
        #
        # @return ActionsResult, ActionsErrorResult
        def set_allowed_actions_and_reusable_workflows_for_a_repository(owner, repo, github_owned_allowed, verified_allowed, patterns_allowed, _options)
          auth    = nil
          body    = { github_owned_allowed: github_owned_allowed, verified_allowed: verified_allowed, patterns_allowed: patterns_allowed }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/permissions/selected-actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization secrets
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_organization_secrets(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization public key
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_an_organization_public_key(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def get_an_organization_secret(org, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param encrypted_value [String] Value for your secret, encrypted with LibSodium using the public key retrieved from the Get an organization public key endpoint.
        # @param key_id [String] ID of the key you used to encrypt the secret.
        # @param visibility [String] Required. Configures the access that repositories have to the organization secret. Can be one of: - all - All repositories in an organization can access the secret. - private - Private repositories in an organization can access the secret. - selected - Only specific repositories can access the secret.
        # @param selected_repository_ids [Array of strings] An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the visibility is set to selected. You can manage the list of selected repositories using the List selected repositories for an organization secret, Set selected repositories for an organization secret, and Remove selected repository from an organization secret endpoints.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_or_update_an_organization_secret(org, secret_name, encrypted_value, key_id, visibility, selected_repository_ids, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id, visibility: visibility, selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_an_organization_secret(org, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list selected repositories for an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def list_selected_repositories_for_an_organization_secret(org, secret_name, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set selected repositories for an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param selected_repository_ids [Array of integers] Required. An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the visibility is set to selected. You can add and remove individual repositories using the Set selected repositories for an organization secret and Remove selected repository from an organization secret endpoints.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_selected_repositories_for_an_organization_secret(org, secret_name, selected_repository_ids, _options)
          auth    = nil
          body    = { selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add selected repository to an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def add_selected_repository_to_an_organization_secret(org, secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove selected repository from an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_selected_repository_from_an_organization_secret(org, secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository secrets
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_repository_secrets(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository public key
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_repository_public_key(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository secret
        #
        # @param owner [String]
        # @param repo [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_repository_secret(owner, repo, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update a repository secret
        #
        # @param owner [String]
        # @param repo [String]
        # @param secret_name [String] secret_name parameter
        # @param encrypted_value [String] Value for your secret, encrypted with LibSodium using the public key retrieved from the Get a repository public key endpoint.
        # @param key_id [String] ID of the key you used to encrypt the secret.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_or_update_a_repository_secret(owner, repo, secret_name, encrypted_value, key_id, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository secret
        #
        # @param owner [String]
        # @param repo [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_repository_secret(owner, repo, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list environment secrets
        #
        # @param repository_id [Integer]
        # @param environment_name [String] The name of the environment
        #
        # @return ActionsResult, ActionsErrorResult
        def list_environment_secrets(repository_id, environment_name, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repositories/#{repository_id}/environments/#{environment_name}/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an environment public key
        #
        # @param repository_id [Integer]
        # @param environment_name [String] The name of the environment
        #
        # @return ActionsResult, ActionsErrorResult
        def get_an_environment_public_key(repository_id, environment_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repositories/#{repository_id}/environments/#{environment_name}/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an environment secret
        #
        # @param repository_id [Integer]
        # @param environment_name [String] The name of the environment
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def get_an_environment_secret(repository_id, environment_name, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repositories/#{repository_id}/environments/#{environment_name}/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update an environment secret
        #
        # @param repository_id [Integer]
        # @param environment_name [String] The name of the environment
        # @param secret_name [String] secret_name parameter
        # @param encrypted_value [String] Required. Value for your secret, encrypted with LibSodium using the public key retrieved from the Get an environment public key endpoint.
        # @param key_id [String] Required. ID of the key you used to encrypt the secret.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_or_update_an_environment_secret(repository_id, environment_name, secret_name, encrypted_value, key_id, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repositories/#{repository_id}/environments/#{environment_name}/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an environment secret
        #
        # @param repository_id [Integer]
        # @param environment_name [String] The name of the environment
        # @param secret_name [String] secret_name parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_an_environment_secret(repository_id, environment_name, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repositories/#{repository_id}/environments/#{environment_name}/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runner groups for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runner_groups_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a self-hosted runner group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param name [String] Required. Name of the runner group.
        # @param visibility [String] Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: all or selected
        # @param selected_organization_ids [Array of integers] List of organization IDs that can access the runner group.
        # @param runners [Array of integers] List of runner IDs to add to the runner group.
        # @param allows_public_repositories [Boolean] Whether the runner group can be used by public repositories.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_self_hosted_runner_group_for_an_enterprise(enterprise, name, visibility, selected_organization_ids, runners, allows_public_repositories, _options)
          auth    = nil
          body    = { name: name, visibility: visibility, selected_organization_ids: selected_organization_ids, runners: runners, allows_public_repositories: allows_public_repositories }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a self-hosted runner group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_self_hosted_runner_group_for_an_enterprise(enterprise, runner_group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a self-hosted runner group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param name [String] Name of the runner group.
        # @param visibility [String] Visibility of a runner group. You can select all organizations or select individual organizations. Can be one of: all or selectedDefault: all
        # @param allows_public_repositories [Boolean] Whether the runner group can be used by public repositories.
        #
        # @return ActionsResult, ActionsErrorResult
        def update_a_self_hosted_runner_group_for_an_enterprise(enterprise, runner_group_id, name, visibility, allows_public_repositories, _options)
          auth    = nil
          body    = { name: name, visibility: visibility, allows_public_repositories: allows_public_repositories }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a self-hosted runner group from an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_self_hosted_runner_group_from_an_enterprise(enterprise, runner_group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list organization access to a self-hosted runner group in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/organizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set organization access for a self-hosted runner group in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param selected_organization_ids [Array of integers] Required. List of organization IDs that can access the runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_organization_access_for_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, selected_organization_ids, _options)
          auth    = nil
          body    = { selected_organization_ids: selected_organization_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/organizations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add organization access to a self-hosted runner group in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param org_id [Integer] Unique identifier of an organization.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, org_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/organizations/#{org_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove organization access to a self-hosted runner group in an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param org_id [Integer] Unique identifier of an organization.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_organization_access_to_a_self_hosted_runner_group_in_an_enterprise(enterprise, runner_group_id, org_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/organizations/#{org_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runners in a group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runners_in_a_group_for_an_enterprise(enterprise, runner_group_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set self-hosted runners in a group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runners [Array of integers] Required. List of runner IDs to add to the runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_self_hosted_runners_in_a_group_for_an_enterprise(enterprise, runner_group_id, runners, _options)
          auth    = nil
          body    = { runners: runners }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add a self-hosted runner to a group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_a_self_hosted_runner_to_a_group_for_an_enterprise(enterprise, runner_group_id, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a self-hosted runner from a group for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_a_self_hosted_runner_from_a_group_for_an_enterprise(enterprise, runner_group_id, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runner-groups/#{runner_group_id}/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runner groups for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runner_groups_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a self-hosted runner group for an organization
        #
        # @param org [String]
        # @param name [String] Required. Name of the runner group.
        # @param visibility [String] Visibility of a runner group. You can select all repositories, select individual repositories, or limit access to private repositories. Can be one of: all, selected, or private.Default: all
        # @param selected_repository_ids [Array of integers] List of repository IDs that can access the runner group.
        # @param runners [Array of integers] List of runner IDs to add to the runner group.
        # @param allows_public_repositories [Boolean] Whether the runner group can be used by public repositories.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_self_hosted_runner_group_for_an_organization(org, name, visibility, selected_repository_ids, runners, allows_public_repositories, _options)
          auth    = nil
          body    = { name: name, visibility: visibility, selected_repository_ids: selected_repository_ids, runners: runners, allows_public_repositories: allows_public_repositories }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a self-hosted runner group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_self_hosted_runner_group_for_an_organization(org, runner_group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a self-hosted runner group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param name [String] Required. Name of the runner group.
        # @param visibility [String] Visibility of a runner group. You can select all repositories, select individual repositories, or all private repositories. Can be one of: all, selected, or private.
        # @param allows_public_repositories [Boolean] Whether the runner group can be used by public repositories.
        #
        # @return ActionsResult, ActionsErrorResult
        def update_a_self_hosted_runner_group_for_an_organization(org, runner_group_id, name, visibility, allows_public_repositories, _options)
          auth    = nil
          body    = { name: name, visibility: visibility, allows_public_repositories: allows_public_repositories }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a self-hosted runner group from an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_self_hosted_runner_group_from_an_organization(org, runner_group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository access to a self-hosted runner group in an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set repository access for a self-hosted runner group in an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param selected_repository_ids [Array of integers] Required. List of repository IDs that can access the runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_repository_access_for_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, selected_repository_ids, _options)
          auth    = nil
          body    = { selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add repository access to a self-hosted runner group in an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def add_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove repository access to a self-hosted runner group in an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param repository_id [Integer]
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_repository_access_to_a_self_hosted_runner_group_in_an_organization(org, runner_group_id, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runners in a group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runners_in_a_group_for_an_organization(org, runner_group_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set self-hosted runners in a group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runners [Array of integers] Required. List of runner IDs to add to the runner group.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_self_hosted_runners_in_a_group_for_an_organization(org, runner_group_id, runners, _options)
          auth    = nil
          body    = { runners: runners }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add a self-hosted runner to a group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_a_self_hosted_runner_to_a_group_for_an_organization(org, runner_group_id, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a self-hosted runner from a group for an organization
        #
        # @param org [String]
        # @param runner_group_id [Integer] Unique identifier of the self-hosted runner group.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_a_self_hosted_runner_from_a_group_for_an_organization(org, runner_group_id, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runner-groups/#{runner_group_id}/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runners for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runners_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list runner applications for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_runner_applications_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/downloads"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a registration token for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_registration_token_for_an_enterprise(_enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh --url https://github.com/enterprises/octo-enterprise --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a remove token for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_remove_token_for_an_enterprise(_enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh remove --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a self-hosted runner from an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_self_hosted_runner_from_an_enterprise(enterprise, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add custom labels to a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to add to the runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_custom_labels_to_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set custom labels for a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to set for the runner. You can pass an empty array to remove all custom labels.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_custom_labels_for_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove all custom labels from a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_all_custom_labels_from_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a custom label from a self-hosted runner for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param name [String] The name of a self-hosted runner's custom label.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_a_custom_label_from_a_self_hosted_runner_for_an_enterprise(enterprise, runner_id, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/actions/runners/#{runner_id}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runners for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runners_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list runner applications for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_runner_applications_for_an_organization(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/downloads"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a registration token for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_registration_token_for_an_organization(_org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh --url https://github.com/octo-org --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a remove token for an organization
        #
        # @param org [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_remove_token_for_an_organization(_org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh remove --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_self_hosted_runner_for_an_organization(org, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a self-hosted runner from an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_self_hosted_runner_from_an_organization(org, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_labels_for_a_self_hosted_runner_for_an_organization(org, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add custom labels to a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to add to the runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_custom_labels_to_a_self_hosted_runner_for_an_organization(org, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set custom labels for a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to set for the runner. You can pass an empty array to remove all custom labels.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_custom_labels_for_a_self_hosted_runner_for_an_organization(org, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove all custom labels from a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_all_custom_labels_from_a_self_hosted_runner_for_an_organization(org, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a custom label from a self-hosted runner for an organization
        #
        # @param org [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param name [String] The name of a self-hosted runner's custom label.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_a_custom_label_from_a_self_hosted_runner_for_an_organization(org, runner_id, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/actions/runners/#{runner_id}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list self-hosted runners for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_self_hosted_runners_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list runner applications for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_runner_applications_for_a_repository(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/downloads"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a registration token for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_registration_token_for_a_repository(_owner, _repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh --url https://github.com/octo-org/octo-repo-artifacts --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a remove token for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_remove_token_for_a_repository(_owner, _repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}./config.sh remove --token TOKEN
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a self-hosted runner from a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_self_hosted_runner_from_a_repository(owner, repo, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list labels for a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_labels_for_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add custom labels to a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to add to the runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def add_custom_labels_to_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set custom labels for a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param labels [Array of strings] Required. The names of the custom labels to set for the runner. You can pass an empty array to remove all custom labels.
        #
        # @return ActionsResult, ActionsErrorResult
        def set_custom_labels_for_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, labels, _options)
          auth    = nil
          body    = { labels: labels }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove all custom labels from a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_all_custom_labels_from_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}/labels"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a custom label from a self-hosted runner for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param runner_id [Integer] Unique identifier of the self-hosted runner.
        # @param name [String] The name of a self-hosted runner's custom label.
        #
        # @return ActionsResult, ActionsErrorResult
        def remove_a_custom_label_from_a_self_hosted_runner_for_a_repository(owner, repo, runner_id, name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runners/#{runner_id}/labels/#{name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a job for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param job_id [Integer] job_id parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_job_for_a_workflow_run(owner, repo, job_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/jobs/#{job_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download job logs for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param job_id [Integer] job_id parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def download_job_logs_for_a_workflow_run(owner, repo, job_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/jobs/#{job_id}/logs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list jobs for a workflow run attempt
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        # @param attempt_number [Integer] The attempt number of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_jobs_for_a_workflow_run_attempt(owner, repo, run_id, attempt_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/attempts/#{attempt_number}/jobs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list jobs for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_jobs_for_a_workflow_run(owner, repo, run_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { filter: options[:filter], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/jobs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # re-run a job from a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param job_id [Integer] job_id parameter
        #
        # @return ActionsResult, ActionsErrorResult
        def re_run_a_job_from_a_workflow_run(owner, repo, job_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/jobs/#{job_id}/rerun"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list workflow runs for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_workflow_runs_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { actor: options[:actor], branch: options[:branch], event: options[:event], status: options[:status], per_page: options[:per_page], page: options[:page], created: options[:created], exclude_pull_requests: options[:exclude_pull_requests], check_suite_id: options[:check_suite_id] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_workflow_run(owner, repo, run_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { exclude_pull_requests: options[:exclude_pull_requests] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_a_workflow_run(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the review history for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_the_review_history_for_a_workflow_run(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/approvals"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # approve a workflow run for a fork pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def approve_a_workflow_run_for_a_fork_pull_request(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/approve"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a workflow run attempt
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        # @param attempt_number [Integer] The attempt number of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_workflow_run_attempt(owner, repo, run_id, attempt_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { exclude_pull_requests: options[:exclude_pull_requests] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/attempts/#{attempt_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download workflow run attempt logs
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        # @param attempt_number [Integer] The attempt number of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def download_workflow_run_attempt_logs(owner, repo, run_id, attempt_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/attempts/#{attempt_number}/logs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # cancel a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def cancel_a_workflow_run(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/cancel"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download workflow run logs
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def download_workflow_run_logs(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/logs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete workflow run logs
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def delete_workflow_run_logs(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/logs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get pending deployments for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_pending_deployments_for_a_workflow_run(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/pending_deployments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # REVIEW: pending deployments for a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        # @param environment_ids [Array of integers] Required. The list of environment ids to approve or reject
        # @param state [String] Required. Whether to approve or reject deployment to the specified environments. Must be one of: approved or rejected
        # @param comment [String] Required. A comment to accompany the deployment review
        #
        # @return ActionsResult, ActionsErrorResult
        def review_pending_deployments_for_a_workflow_run(owner, repo, run_id, environment_ids, state, comment, _options)
          auth    = nil
          body    = { environment_ids: environment_ids, state: state, comment: comment }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/pending_deployments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # re-run a workflow
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def re_run_a_workflow(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/rerun"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # re-run failed jobs from a workflow run
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def re_run_failed_jobs_from_a_workflow_run(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/rerun-failed-jobs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get workflow run usage
        #
        # @param owner [String]
        # @param repo [String]
        # @param run_id [Integer] The id of the workflow run.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_workflow_run_usage(owner, repo, run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/runs/#{run_id}/timing"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list workflow runs
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        #
        # @return ActionsResult, ActionsErrorResult
        def list_workflow_runs(owner, repo, workflow_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { actor: options[:actor], branch: options[:branch], event: options[:event], status: options[:status], per_page: options[:per_page], page: options[:page], created: options[:created], exclude_pull_requests: options[:exclude_pull_requests], check_suite_id: options[:check_suite_id] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}/runs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository workflows
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ActionsResult, ActionsErrorResult
        def list_repository_workflows(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a workflow
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_a_workflow(owner, repo, workflow_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # disable a workflow
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        #
        # @return ActionsResult, ActionsErrorResult
        def disable_a_workflow(owner, repo, workflow_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}/disable"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a workflow dispatch event
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        # @param ref [String] Required. The git reference for the workflow. The reference can be a branch or tag name.
        # @param inputs [Object] Input keys and values configured in the workflow file. The maximum number of properties is 10. Any default properties configured in the workflow file will be used when inputs are omitted.
        #
        # @return ActionsResult, ActionsErrorResult
        def create_a_workflow_dispatch_event(owner, repo, workflow_id, ref, inputs, _options)
          auth    = nil
          body    = { ref: ref, inputs: inputs }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}/dispatches"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # enable a workflow
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        #
        # @return ActionsResult, ActionsErrorResult
        def enable_a_workflow(owner, repo, workflow_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}/enable"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get workflow usage
        #
        # @param owner [String]
        # @param repo [String]
        # @param workflow_id [] The ID of the workflow. You can also pass the workflow file name as a string.
        #
        # @return ActionsResult, ActionsErrorResult
        def get_workflow_usage(owner, repo, workflow_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/actions/workflows/#{workflow_id}/timing"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
