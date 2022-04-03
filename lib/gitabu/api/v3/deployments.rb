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
      # Class to display Deployments result
      class DeploymentsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class DeploymentsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Deployments endpoints.
      class Deployments
        def self.list_deployments(owner: nil, repo: nil, options: nil)
          new.list_deployments(owner, repo, options)
        end

        def self.create_a_deployment(owner: nil, repo: nil, ref: nil, task: nil, auto_merge: nil, required_contexts: nil, payload: nil, environment: nil, description: nil, transient_environment: nil, production_environment: nil, options: nil)
          new.create_a_deployment(owner, repo, ref, task, auto_merge, required_contexts, payload, environment, description, transient_environment, production_environment, options)
        end

        def self.get_a_deployment(owner: nil, repo: nil, deployment_id: nil, options: nil)
          new.get_a_deployment(owner, repo, deployment_id, options)
        end

        def self.delete_a_deployment(owner: nil, repo: nil, deployment_id: nil, options: nil)
          new.delete_a_deployment(owner, repo, deployment_id, options)
        end

        def self.get_all_environments(owner: nil, repo: nil, options: nil)
          new.get_all_environments(owner, repo, options)
        end

        def self.get_an_environment(owner: nil, repo: nil, environment_name: nil, options: nil)
          new.get_an_environment(owner, repo, environment_name, options)
        end

        def self.create_or_update_an_environment(owner: nil, repo: nil, environment_name: nil, wait_timer: nil, reviewers: nil, deployment_branch_policy: nil, options: nil)
          new.create_or_update_an_environment(owner, repo, environment_name, wait_timer, reviewers, deployment_branch_policy, options)
        end

        def self.delete_an_environment(owner: nil, repo: nil, environment_name: nil, options: nil)
          new.delete_an_environment(owner, repo, environment_name, options)
        end

        def self.list_deployment_statuses(owner: nil, repo: nil, deployment_id: nil, options: nil)
          new.list_deployment_statuses(owner, repo, deployment_id, options)
        end

        def self.create_a_deployment_status(owner: nil, repo: nil, deployment_id: nil, state: nil, target_url: nil, log_url: nil, description: nil, environment: nil, environment_url: nil, auto_inactive: nil, options: nil)
          new.create_a_deployment_status(owner, repo, deployment_id, state, target_url, log_url, description, environment, environment_url, auto_inactive, options)
        end

        def self.get_a_deployment_status(owner: nil, repo: nil, deployment_id: nil, status_id: nil, options: nil)
          new.get_a_deployment_status(owner, repo, deployment_id, status_id, options)
        end

        private

        # list deployments
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def list_deployments(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { sha: options[:sha], ref: options[:ref], task: options[:task], environment: options[:environment], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a deployment
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] Required. The ref to deploy. This can be a branch, tag, or SHA.
        # @param task [String] Specifies a task to execute (e.g., deploy or deploy:migrations).Default: deploy
        # @param auto_merge [Boolean] Attempts to automatically merge the default branch into the requested ref, if it's behind the default branch.Default:
        # @param required_contexts [Array of strings] The status contexts to verify against commit status checks. If you omit this parameter, GitHub verifies all unique contexts before creating a deployment. To bypass checking entirely, pass an empty array. Defaults to all unique contexts.
        # @param payload [Object or string or ] JSON payload with extra information about the deployment.
        # @param environment [String] Name for the target deployment environment (e.g., production, staging, qa).Default: production
        # @param description [String or null] Short description of the deployment.
        # @param transient_environment [Boolean] Specifies if the given environment is specific to the deployment and will no longer exist at some point in the future. Default: false
        # @param production_environment [Boolean] Specifies if the given environment is one that end-users directly interact with. Default: true when environment is production and false otherwise.
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def create_a_deployment(owner, repo, ref, task, auto_merge, required_contexts, payload, environment, description, transient_environment, production_environment, _options)
          auth    = nil
          body    = { ref: ref, task: task, auto_merge: auto_merge, required_contexts: required_contexts, payload: payload, environment: environment, description: description, transient_environment: transient_environment, production_environment: production_environment }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a deployment
        #
        # @param owner [String]
        # @param repo [String]
        # @param deployment_id [Integer] deployment_id parameter
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def get_a_deployment(owner, repo, deployment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments/#{deployment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a deployment
        #
        # @param owner [String]
        # @param repo [String]
        # @param deployment_id [Integer] deployment_id parameter
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def delete_a_deployment(owner, repo, deployment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments/#{deployment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all environments
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def get_all_environments(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/environments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an environment
        #
        # @param owner [String]
        # @param repo [String]
        # @param environment_name [String] The name of the environment
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def get_an_environment(owner, repo, environment_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/environments/#{environment_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update an environment
        #
        # @param owner [String]
        # @param repo [String]
        # @param environment_name [String] The name of the environment
        # @param wait_timer [Integer] The amount of time to delay a job after the job is initially triggered. The time (in minutes) must be an integer between 0 and 43,200 (30 days).
        # @param reviewers [Array of objects or null] The people or teams that may review jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
        # @param deployment_branch_policy [Object or null] The type of deployment branch policy for this environment. To allow all branches to deploy, set to null.
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def create_or_update_an_environment(owner, repo, environment_name, wait_timer, reviewers, deployment_branch_policy, _options)
          auth    = nil
          body    = { wait_timer: wait_timer, reviewers: reviewers, deployment_branch_policy: deployment_branch_policy }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/environments/#{environment_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an environment
        #
        # @param owner [String]
        # @param repo [String]
        # @param environment_name [String] The name of the environment
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def delete_an_environment(owner, repo, environment_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/environments/#{environment_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list deployment statuses
        #
        # @param owner [String]
        # @param repo [String]
        # @param deployment_id [Integer] deployment_id parameter
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def list_deployment_statuses(owner, repo, deployment_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments/#{deployment_id}/statuses"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a deployment status
        #
        # @param owner [String]
        # @param repo [String]
        # @param deployment_id [Integer] deployment_id parameter
        # @param state [String] Required. The state of the status. Can be one of error, failure, inactive, in_progress, queued, pending, or success. When you set a transient deployment to inactive, the deployment will be shown as destroyed in GitHub.
        # @param target_url [String] The target URL to associate with this status. This URL should contain output to keep the user updated while the task is running or serve as historical information for what happened in the deployment. Note: It's recommended to use the log_url parameter, which replaces target_url.
        # @param log_url [String] The full URL of the deployment's output. This parameter replaces target_url. We will continue to accept target_url to support legacy uses, but we recommend replacing target_url with log_url. Setting log_url will automatically set target_url to the same value. Default: ""
        # @param description [String] A short description of the status. The maximum description length is 140 characters.
        # @param environment [String] Name for the target deployment environment, which can be changed when setting a deploy status. For example, production, staging, or qa.
        # @param environment_url [String] Sets the URL for accessing your environment. Default: ""
        # @param auto_inactive [Boolean] Adds a new inactive status to all prior non-transient, non-production environment deployments with the same repository and environment name as the created status's deployment. An inactive status is only added to deployments that had a success state. Default: true
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def create_a_deployment_status(owner, repo, deployment_id, state, target_url, log_url, description, environment, environment_url, auto_inactive, _options)
          auth    = nil
          body    = { state: state, target_url: target_url, log_url: log_url, description: description, environment: environment, environment_url: environment_url, auto_inactive: auto_inactive }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments/#{deployment_id}/statuses"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a deployment status
        #
        # @param owner [String]
        # @param repo [String]
        # @param deployment_id [Integer] deployment_id parameter
        # @param status_id [Integer]
        #
        # @return DeploymentsResult, DeploymentsErrorResult
        def get_a_deployment_status(owner, repo, deployment_id, status_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/deployments/#{deployment_id}/statuses/#{status_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeploymentsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeploymentsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
