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
      # Class to display Checks result
      class ChecksResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ChecksErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Checks endpoints.
      class Checks
        def self.create_a_check_run(owner: nil, repo: nil, name: nil, head_sha: nil, details_url: nil, external_id: nil, status: nil, started_at: nil, conclusion: nil, completed_at: nil, output: nil, actions: nil, options: nil)
          new.create_a_check_run(owner, repo, name, head_sha, details_url, external_id, status, started_at, conclusion, completed_at, output, actions, options)
        end

        def self.get_a_check_run(owner: nil, repo: nil, check_run_id: nil, options: nil)
          new.get_a_check_run(owner, repo, check_run_id, options)
        end

        def self.update_a_check_run(owner: nil, repo: nil, check_run_id: nil, name: nil, details_url: nil, external_id: nil, started_at: nil, status: nil, conclusion: nil, completed_at: nil, output: nil, actions: nil, options: nil)
          new.update_a_check_run(owner, repo, check_run_id, name, details_url, external_id, started_at, status, conclusion, completed_at, output, actions, options)
        end

        def self.list_check_run_annotations(owner: nil, repo: nil, check_run_id: nil, options: nil)
          new.list_check_run_annotations(owner, repo, check_run_id, options)
        end

        def self.rerequest_a_check_run(owner: nil, repo: nil, check_run_id: nil, options: nil)
          new.rerequest_a_check_run(owner, repo, check_run_id, options)
        end

        def self.list_check_runs_in_a_check_suite(owner: nil, repo: nil, check_suite_id: nil, options: nil)
          new.list_check_runs_in_a_check_suite(owner, repo, check_suite_id, options)
        end

        def self.list_check_runs_for_a_git_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.list_check_runs_for_a_git_reference(owner, repo, ref, options)
        end

        def self.create_a_check_suite(owner: nil, repo: nil, head_sha: nil, options: nil)
          new.create_a_check_suite(owner, repo, head_sha, options)
        end

        def self.update_repository_preferences_for_check_suites(owner: nil, repo: nil, auto_trigger_checks: nil, options: nil)
          new.update_repository_preferences_for_check_suites(owner, repo, auto_trigger_checks, options)
        end

        def self.get_a_check_suite(owner: nil, repo: nil, check_suite_id: nil, options: nil)
          new.get_a_check_suite(owner, repo, check_suite_id, options)
        end

        def self.rerequest_a_check_suite(owner: nil, repo: nil, check_suite_id: nil, options: nil)
          new.rerequest_a_check_suite(owner, repo, check_suite_id, options)
        end

        def self.list_check_suites_for_a_git_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.list_check_suites_for_a_git_reference(owner, repo, ref, options)
        end

        private

        # create a check run
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String] Required. The name of the check. For example, "code-coverage".
        # @param head_sha [String] Required. The SHA of the commit.
        # @param details_url [String] The URL of the integrator's site that has the full details of the check. If the integrator does not provide this, then the homepage of the GitHub app is used.
        # @param external_id [String] A reference for the run on the integrator's system.
        # @param status [String] The current status. Can be one of queued, in_progress, or completed.Default: queued
        # @param started_at [String] The time that the check run began. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        # @param conclusion [String] Required if you provide completed_at or a status of completed. The final conclusion of the check. Can be one of action_required, cancelled, failure, neutral, success, skipped, stale, or timed_out. When the conclusion is action_required, additional details should be provided on the site specified by details_url.
        # @param completed_at [String] The time the check completed. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        # @param output [Object] Check runs can accept a variety of data in the output object, including a title and summary and can optionally provide descriptive details about the run. See the output object description.
        # @param actions [Array of objects] Displays a button on GitHub that can be clicked to alert your app to do additional tasks. For example, a code linting app can display a button that automatically fixes detected errors. The button created in this object is displayed after the check run completes. When a user clicks the button, GitHub sends the check_run.requested_action webhook to your app. Each action includes a label, identifier and description. A maximum of three actions are accepted. See the actions object description. To learn more about check runs and requested actions, see "Check runs and requested actions."
        #
        # @return ChecksResult, ChecksErrorResult
        def create_a_check_run(owner, repo, name, head_sha, details_url, external_id, status, started_at, conclusion, completed_at, output, actions, _options)
          auth    = nil
          body    = { name: name, head_sha: head_sha, details_url: details_url, external_id: external_id, status: status, started_at: started_at, conclusion: conclusion, completed_at: completed_at, output: output, actions: actions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-runs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a check run
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_run_id [Integer] check_run_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def get_a_check_run(owner, repo, check_run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-runs/#{check_run_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a check run
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_run_id [Integer] check_run_id parameter
        # @param name [String] The name of the check. For example, "code-coverage".
        # @param details_url [String] The URL of the integrator's site that has the full details of the check.
        # @param external_id [String] A reference for the run on the integrator's system.
        # @param started_at [String] This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        # @param status [String] The current status. Can be one of queued, in_progress, or completed.
        # @param conclusion [String] Required if you provide completed_at or a status of completed. The final conclusion of the check. Can be one of action_required, cancelled, failure, neutral, success, skipped, stale, or timed_out.
        # @param completed_at [String] The time the check completed. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        # @param output [Object] Check runs can accept a variety of data in the output object, including a title and summary and can optionally provide descriptive details about the run. See the output object description.
        # @param actions [Array of objects] Possible further actions the integrator can perform, which a user may trigger. Each action includes a label, identifier and description. A maximum of three actions are accepted. See the actions object description. To learn more about check runs and requested actions, see "Check runs and requested actions."
        #
        # @return ChecksResult, ChecksErrorResult
        def update_a_check_run(owner, repo, check_run_id, name, details_url, external_id, started_at, status, conclusion, completed_at, output, actions, _options)
          auth    = nil
          body    = { name: name, details_url: details_url, external_id: external_id, started_at: started_at, status: status, conclusion: conclusion, completed_at: completed_at, output: output, actions: actions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-runs/#{check_run_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list check run annotations
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_run_id [Integer] check_run_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def list_check_run_annotations(owner, repo, check_run_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-runs/#{check_run_id}/annotations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # rerequest a check run
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_run_id [Integer] check_run_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def rerequest_a_check_run(owner, repo, check_run_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-runs/#{check_run_id}/rerequest"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list check runs in a check suite
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_suite_id [Integer] check_suite_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def list_check_runs_in_a_check_suite(owner, repo, check_suite_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { check_name: options[:check_name], status: options[:status], filter: options[:filter], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-suites/#{check_suite_id}/check-runs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list check runs for a git reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def list_check_runs_for_a_git_reference(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { check_name: options[:check_name], status: options[:status], filter: options[:filter], per_page: options[:per_page], page: options[:page], app_id: options[:app_id] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{ref}/check-runs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a check suite
        #
        # @param owner [String]
        # @param repo [String]
        # @param head_sha [String] Required. The sha of the head commit.
        #
        # @return ChecksResult, ChecksErrorResult
        def create_a_check_suite(owner, repo, head_sha, _options)
          auth    = nil
          body    = { head_sha: head_sha }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-suites"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update repository preferences for check suites
        #
        # @param owner [String]
        # @param repo [String]
        # @param auto_trigger_checks [Array of objects] Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default. See the auto_trigger_checks object description for details.
        #
        # @return ChecksResult, ChecksErrorResult
        def update_repository_preferences_for_check_suites(owner, repo, auto_trigger_checks, _options)
          auth    = nil
          body    = { auto_trigger_checks: auto_trigger_checks }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-suites/preferences"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a check suite
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_suite_id [Integer] check_suite_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def get_a_check_suite(owner, repo, check_suite_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-suites/#{check_suite_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # rerequest a check suite
        #
        # @param owner [String]
        # @param repo [String]
        # @param check_suite_id [Integer] check_suite_id parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def rerequest_a_check_suite(owner, repo, check_suite_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/check-suites/#{check_suite_id}/rerequest"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list check suites for a git reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return ChecksResult, ChecksErrorResult
        def list_check_suites_for_a_git_reference(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { app_id: options[:app_id], check_name: options[:check_name], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/commits/#{ref}/check-suites"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ChecksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ChecksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
