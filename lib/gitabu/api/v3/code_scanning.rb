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
      # Class to display Code_scanning result
      class CodeScanningResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class CodeScanningErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Code scanning endpoints.
      class CodeScanning
        def self.list_code_scanning_alerts_for_an_organization(org: nil, options: nil)
          new.list_code_scanning_alerts_for_an_organization(org, options)
        end

        def self.list_code_scanning_alerts_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_code_scanning_alerts_for_a_repository(owner, repo, options)
        end

        def self.get_a_code_scanning_alert(owner: nil, repo: nil, alert_number: nil, options: nil)
          new.get_a_code_scanning_alert(owner, repo, alert_number, options)
        end

        def self.update_a_code_scanning_alert(owner: nil, repo: nil, alert_number: nil, state: nil, dismissed_reason: nil, options: nil)
          new.update_a_code_scanning_alert(owner, repo, alert_number, state, dismissed_reason, options)
        end

        def self.list_instances_of_a_code_scanning_alert(owner: nil, repo: nil, alert_number: nil, options: nil)
          new.list_instances_of_a_code_scanning_alert(owner, repo, alert_number, options)
        end

        def self.list_code_scanning_analyses_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_code_scanning_analyses_for_a_repository(owner, repo, options)
        end

        def self.get_a_code_scanning_analysis_for_a_repository(owner: nil, repo: nil, analysis_id: nil, options: nil)
          new.get_a_code_scanning_analysis_for_a_repository(owner, repo, analysis_id, options)
        end

        def self.delete_a_code_scanning_analysis_from_a_repository(owner: nil, repo: nil, analysis_id: nil, options: nil)
          new.delete_a_code_scanning_analysis_from_a_repository(owner, repo, analysis_id, options)
        end

        def self.upload_an_analysis_as_sarif_data(owner: nil, repo: nil, commit_sha: nil, ref: nil, sarif: nil, checkout_uri: nil, started_at: nil, tool_name: nil, options: nil)
          new.upload_an_analysis_as_sarif_data(owner, repo, commit_sha, ref, sarif, checkout_uri, started_at, tool_name, options)
        end

        def self.get_information_about_a_sarif_upload(owner: nil, repo: nil, sarif_id: nil, options: nil)
          new.get_information_about_a_sarif_upload(owner, repo, sarif_id, options)
        end

        private

        # list code scanning alerts for an organization
        #
        # @param org [String]
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def list_code_scanning_alerts_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { before: options[:before], after: options[:after], page: options[:page], per_page: options[:per_page], direction: options[:direction], state: options[:state], sort: options[:sort] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/code-scanning/alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list code scanning alerts for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def list_code_scanning_alerts_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { tool_name: options[:tool_name], tool_guid: options[:tool_guid], page: options[:page], per_page: options[:per_page], ref: options[:ref], direction: options[:direction], sort: options[:sort], state: options[:state] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/alerts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a code scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def get_a_code_scanning_alert(owner, repo, alert_number, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a code scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        # @param state [String] Required. Sets the state of the code scanning alert. Can be one of open or dismissed. You must provide dismissed_reason when you set the state to dismissed.
        # @param dismissed_reason [String or null] Required when the state is dismissed. The reason for dismissing or closing the alert. Can be one of: false positive, won't fix, and used in tests.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def update_a_code_scanning_alert(owner, repo, alert_number, state, dismissed_reason, _options)
          auth    = nil
          body    = { state: state, dismissed_reason: dismissed_reason }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list instances of a code scanning alert
        #
        # @param owner [String]
        # @param repo [String]
        # @param alert_number [Integer] The number that identifies an alert. You can find this at the end of the URL for a code scanning alert within GitHub, and in the number field in the response from the GET /repos/{owner}/{repo}/code-scanning/alerts operation.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def list_instances_of_a_code_scanning_alert(owner, repo, alert_number, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page], ref: options[:ref] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/alerts/#{alert_number}/instances"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list code scanning analyses for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def list_code_scanning_analyses_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { tool_name: options[:tool_name], tool_guid: options[:tool_guid], page: options[:page], per_page: options[:per_page], ref: options[:ref], sarif_id: options[:sarif_id] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/analyses"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a code scanning analysis for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param analysis_id [Integer] The ID of the analysis, as returned from the GET /repos/{owner}/{repo}/code-scanning/analyses operation.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def get_a_code_scanning_analysis_for_a_repository(owner, repo, analysis_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/analyses/#{analysis_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a code scanning analysis from a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param analysis_id [Integer] The ID of the analysis, as returned from the GET /repos/{owner}/{repo}/code-scanning/analyses operation.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def delete_a_code_scanning_analysis_from_a_repository(owner, repo, analysis_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { confirm_delete: options[:confirm_delete] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/analyses/#{analysis_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # upload an analysis as sarif data
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] Required. The SHA of the commit to which the analysis you are uploading relates.
        # @param ref [String] Required. The full Git reference, formatted as refs/heads/<branch name>, refs/pull/<number>/merge, or refs/pull/<number>/head.
        # @param sarif [String] Required. A Base64 string representing the SARIF file to upload. You must first compress your SARIF file using gzip and then translate the contents of the file into a Base64 encoding string. For more information, see "SARIF support for code scanning."
        # @param checkout_uri [String] The base directory used in the analysis, as it appears in the SARIF file. This property is used to convert file paths from absolute to relative, so that alerts can be mapped to their correct location in the repository.
        # @param started_at [String] The time that the analysis run began. This is a timestamp in ISO 8601 format: YYYY-MM-DDTHH:MM:SSZ.
        # @param tool_name [String] The name of the tool used to generate the code scanning analysis. If this parameter is not used, the tool name defaults to "API". If the uploaded SARIF contains a tool GUID, this will be available for filtering using the tool_guid parameter of operations such as GET /repos/{owner}/{repo}/code-scanning/alerts.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def upload_an_analysis_as_sarif_data(owner, repo, commit_sha, ref, sarif, checkout_uri, started_at, tool_name, _options)
          auth    = nil
          body    = { commit_sha: commit_sha, ref: ref, sarif: sarif, checkout_uri: checkout_uri, started_at: started_at, tool_name: tool_name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/sarifs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get information about a sarif upload
        #
        # @param owner [String]
        # @param repo [String]
        # @param sarif_id [String] The SARIF ID obtained after uploading.
        #
        # @return CodeScanningResult, CodeScanningErrorResult
        def get_information_about_a_sarif_upload(owner, repo, sarif_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/code-scanning/sarifs/#{sarif_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodeScanningResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodeScanningErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
