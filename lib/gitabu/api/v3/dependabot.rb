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
      # Class to display Dependabot result
      class DependabotResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class DependabotErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Dependabot endpoints.
      class Dependabot
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

        private

        # list organization secrets
        #
        # @param org [String]
        #
        # @return DependabotResult, DependabotErrorResult
        def list_organization_secrets(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization public key
        #
        # @param org [String]
        #
        # @return DependabotResult, DependabotErrorResult
        def get_an_organization_public_key(org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return DependabotResult, DependabotErrorResult
        def get_an_organization_secret(org, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param encrypted_value [String] Value for your secret, encrypted with LibSodium using the public key retrieved from the Get an organization public key endpoint.
        # @param key_id [String] ID of the key you used to encrypt the secret.
        # @param visibility [String] Required. Configures the access that repositories have to the organization secret. Can be one of:
        #   - all - All repositories in an organization can access the secret.
        #   - private - Private repositories in an organization can access the secret.
        #   - selected - Only specific repositories can access the secret.
        # @param selected_repository_ids [Array of strings] An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the visibility is set to selected. You can manage the list of selected repositories using the List selected repositories for an organization secret, Set selected repositories for an organization secret, and Remove selected repository from an organization secret endpoints.
        #
        # @return DependabotResult, DependabotErrorResult
        def create_or_update_an_organization_secret(org, secret_name, encrypted_value, key_id, visibility, selected_repository_ids, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id, visibility: visibility, selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return DependabotResult, DependabotErrorResult
        def delete_an_organization_secret(org, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list selected repositories for an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return DependabotResult, DependabotErrorResult
        def list_selected_repositories_for_an_organization_secret(org, secret_name, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set selected repositories for an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param selected_repository_ids [Array of integers] Required. An array of repository ids that can access the organization secret. You can only provide a list of repository ids when the visibility is set to selected. You can add and remove individual repositories using the Set selected repositories for an organization secret and Remove selected repository from an organization secret endpoints.
        #
        # @return DependabotResult, DependabotErrorResult
        def set_selected_repositories_for_an_organization_secret(org, secret_name, selected_repository_ids, _options)
          auth    = nil
          body    = { selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add selected repository to an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return DependabotResult, DependabotErrorResult
        def add_selected_repository_to_an_organization_secret(org, secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove selected repository from an organization secret
        #
        # @param org [String]
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return DependabotResult, DependabotErrorResult
        def remove_selected_repository_from_an_organization_secret(org, secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/dependabot/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository secrets
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return DependabotResult, DependabotErrorResult
        def list_repository_secrets(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dependabot/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository public key
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return DependabotResult, DependabotErrorResult
        def get_a_repository_public_key(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dependabot/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository secret
        #
        # @param owner [String]
        # @param repo [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return DependabotResult, DependabotErrorResult
        def get_a_repository_secret(owner, repo, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
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
        # @return DependabotResult, DependabotErrorResult
        def create_or_update_a_repository_secret(owner, repo, secret_name, encrypted_value, key_id, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository secret
        #
        # @param owner [String]
        # @param repo [String]
        # @param secret_name [String] secret_name parameter
        #
        # @return DependabotResult, DependabotErrorResult
        def delete_a_repository_secret(owner, repo, secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/dependabot/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            DependabotResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            DependabotErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
