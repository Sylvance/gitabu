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
      # Class to display Deploy_keys result
      class DeployKeysResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class DeployKeysErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Deploy keys endpoints.
      class DeployKeys
        def self.list_deploy_keys(owner: nil, repo: nil, options: nil)
          new.list_deploy_keys(owner, repo, options)
        end

        def self.create_a_deploy_key(owner: nil, repo: nil, title: nil, key: nil, read_only: nil, options: nil)
          new.create_a_deploy_key(owner, repo, title, key, read_only, options)
        end

        def self.get_a_deploy_key(owner: nil, repo: nil, key_id: nil, options: nil)
          new.get_a_deploy_key(owner, repo, key_id, options)
        end

        def self.delete_a_deploy_key(owner: nil, repo: nil, key_id: nil, options: nil)
          new.delete_a_deploy_key(owner, repo, key_id, options)
        end

        private

        # list deploy keys
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return DeployKeysResult, DeployKeysErrorResult
        def list_deploy_keys(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeployKeysResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeployKeysErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a deploy key
        #
        # @param owner [String]
        # @param repo [String]
        # @param title [String] A name for the key.
        # @param key [String] Required. The contents of the key.
        # @param read_only [Boolean] If true, the key will only be able to read repository contents. Otherwise, the key will be able to read and write.
        #   Deploy keys with write access can perform the same actions as an organization member with admin access, or a collaborator on a personal repository. For more information, see "Repository permission levels for an organization" and "Permission levels for a user account repository."
        #
        # @return DeployKeysResult, DeployKeysErrorResult
        def create_a_deploy_key(owner, repo, title, key, read_only, _options)
          auth    = nil
          body    = { title: title, key: key, read_only: read_only }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            DeployKeysResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeployKeysErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a deploy key
        #
        # @param owner [String]
        # @param repo [String]
        # @param key_id [Integer] key_id parameter
        #
        # @return DeployKeysResult, DeployKeysErrorResult
        def get_a_deploy_key(owner, repo, key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/keys/#{key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DeployKeysResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeployKeysErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a deploy key
        #
        # @param owner [String]
        # @param repo [String]
        # @param key_id [Integer] key_id parameter
        #
        # @return DeployKeysResult, DeployKeysErrorResult
        def delete_a_deploy_key(owner, repo, key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/keys/#{key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DeployKeysResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DeployKeysErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
