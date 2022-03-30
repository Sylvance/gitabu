# frozen_string_literal: true

# Ruby gem that helps you work with Github API.
module Gitabu
  # API V3 for Github
  module Api
    # Version 3
    module V3
      # Class to display actionsresult
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
        def self.list_artifacts(owner: nil, repo: nil, options: nil)
          new.list_artifacts(owner, repo, options)
        end

        def self.get_artifact(id: nil, owner: nil, repo: nil)
          new.get_artifact(id, owner, repo)
        end

        def self.delete_artifact(id: nil, owner: nil, repo: nil)
          new.delete_artifact(id, owner, repo)
        end

        def self.download_artifact(id: nil, owner: nil, repo: nil, archive_format: nil)
          new.download_artifact(id, owner, repo, archive_format)
        end

        def self.list_workflow_run_artifacts(owner: nil, repo: nil, run_id: nil, options: nil)
          new.list_workflow_run_artifacts(owner, repo, run_id, options)
        end

        def self.github_actions_cache_usage_for_enterprise
          new.github_actions_cache_usage_for_enterprise
        end

        def self.github_actions_cache_usage_for_organization
          new.github_actions_cache_usage_for_organization
        end

        def self.github_actions_cache_usage_for_organization_by_repository
          new.github_actions_cache_usage_for_organization_by_repository
        end

        def self.github_actions_cache_usage_for_organization_for_repository(owner: nil, repo: nil)
          new.github_actions_cache_usage_for_organization_for_repository(owner, repo)
        end

        def self.github_actions_permissions_for_an_enterprise
          new.github_actions_permissions_for_an_enterprise
        end

        private

        def list_artifacts(owner, repo, options)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/artifacts"
          headers = { accept: "application/vnd.github.v3+json" }
          params = { per_page: options[:per_page], page: options[:page] } unless options.nil?

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to list artifacts endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling list artifacts endpoint.")
          end
        end

        def get_artifact(id, owner, repo)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/artifacts/#{id}"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to get artifact endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling get artifact endpoint.")
          end
        end

        def delete_artifact(id, owner, repo)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/artifacts/#{id}"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :delete, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to delete artifact endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling delete artifact endpoint.")
          end
        end

        def download_artifact(id, owner, repo, archive_format)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/artifacts/#{id}/#{archive_format}"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to download artifact endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling download artifact endpoint.")
          end
        end

        def list_workflow_run_artifacts(owner, repo, run_id, options)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/runs/#{run_id}/artifacts"
          headers = { accept: "application/vnd.github.v3+json" }
          params = { per_page: options[:per_page], page: options[:page] } unless options.nil?

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to list workflow run artifacts endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling list workflow run artifacts endpoint.")
          end
        end

        def github_actions_cache_usage_for_enterprise
          uri = "#{Gitabu::BASE_URL}enterprises/enterprise/actions/cache/usage"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions cache usage for enterprise endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions cache usage for enterprise endpoint.")
          end
        end

        def github_actions_cache_usage_for_organization
          uri = "#{Gitabu::BASE_URL}orgs/org/actions/cache/usage"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions cache usage for organization endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions cache usage for organization endpoint.")
          end
        end

        def github_actions_cache_usage_for_organization_by_repository(options)
          uri = "#{Gitabu::BASE_URL}orgs/org/actions/cache/usage-by-repository"
          headers = { accept: "application/vnd.github.v3+json" }
          params = { per_page: options[:per_page], page: options[:page] } unless options.nil?

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions cache usage for organization by repo endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions cache usage for organization by repo endpoint.")
          end
        end

        def github_actions_cache_usage_for_organization_for_repository(owner, repo)
          uri = "#{Gitabu::BASE_URL}repos/#{owner}/#{repo}/actions/cache/usage"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions cache usage for organization for repo endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions cache usage for organization for repo endpoint.")
          end
        end

        def github_actions_permissions_for_an_enterprise
          uri = "#{Gitabu::BASE_URL}enterprises/enterprise/actions/permissions"
          headers = { accept: "application/vnd.github.v3+json" }

          http_call = Gitabu::HttpClient.call(auth: nil, body: nil, headers: headers, method: :get, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions permissions for an enterprise endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions permissions for an enterprise endpoint.")
          end
        end

        def set_github_actions_permissions_for_an_enterprise(allowed_actions, enabled_organizations)
          uri = "#{Gitabu::BASE_URL}enterprises/enterprise/actions/permissions"
          headers = { accept: "application/vnd.github.v3+json" }
          body = { enabled_organizations: enabled_organizations, allowed_actions: allowed_actions }

          http_call = Gitabu::HttpClient.call(auth: nil, body: body, headers: headers, method: :put, params: nil, uri: uri)

          if http_call.successful?
            ActionsResult.new(result: http_call, message: "Successful call to github actions permissions for an enterprise endpoint.")
          else
            ActionsErrorResult.new(result: http_call, message: "Failure while calling github actions permissions for an enterprise endpoint.")
          end
        end
      end
    end
  end
end
