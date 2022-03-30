# frozen_string_literal: true

require_relative "api/v3/actions"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Client that acts as a middleman to the API.
  class Client
    def self.list_artifacts(owner:, repo:, options: nil)
      Gitabu::Api::V3::Actions.list_artifacts(owner: owner, repo: repo, options: options)
    end

    def self.get_artifact(id:, owner:, repo:)
      Gitabu::Api::V3::Actions.get_artifact(id: id, owner: owner, repo: repo)
    end

    def self.delete_artifact(id:, owner:, repo:)
      Gitabu::Api::V3::Actions.delete_artifact(id: id, owner: owner, repo: repo)
    end

    def self.download_artifact(id:, owner:, repo:, archive_format:)
      Gitabu::Api::V3::Actions.download_artifact(id: id, owner: owner, repo: repo, archive_format: archive_format)
    end

    def self.list_workflow_run_artifacts(owner:, repo:, run_id:, options:)
      Gitabu::Api::V3::Actions.list_workflow_run_artifacts(owner: owner, repo: repo, run_id: run_id, options: options)
    end

    def self.github_actions_cache_usage_for_enterprise
      Gitabu::Api::V3::Actions.github_actions_cache_usage_for_enterprise
    end

    def self.github_actions_cache_usage_for_organization
      Gitabu::Api::V3::Actions.github_actions_cache_usage_for_organization
    end
  end
end
