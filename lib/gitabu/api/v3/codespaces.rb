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
      # Class to display Codespaces result
      class CodespacesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class CodespacesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Codespaces endpoints.
      class Codespaces
        def self.list_codespaces_in_a_repository_for_the_authenticated_user(owner: nil, repo: nil, options: nil)
          new.list_codespaces_in_a_repository_for_the_authenticated_user(owner, repo, options)
        end

        def self.create_a_codespace_in_a_repository(owner: nil, repo: nil, ref: nil, location: nil, machine: nil, working_directory: nil, idle_timeout_minutes: nil, display_name: nil, options: nil)
          new.create_a_codespace_in_a_repository(owner, repo, ref, location, machine, working_directory, idle_timeout_minutes, display_name, options)
        end

        def self.create_a_codespace_from_a_pull_request(owner: nil, repo: nil, pull_number: nil, location: nil, machine: nil, working_directory: nil, idle_timeout_minutes: nil, display_name: nil, options: nil)
          new.create_a_codespace_from_a_pull_request(owner, repo, pull_number, location, machine, working_directory, idle_timeout_minutes, display_name, options)
        end

        def self.list_codespaces_for_the_authenticated_user(options: nil)
          new.list_codespaces_for_the_authenticated_user(options)
        end

        def self.create_a_codespace_for_the_authenticated_user(repository_id: nil, ref: nil, location: nil, machine: nil, working_directory: nil, idle_timeout_minutes: nil, display_name: nil, pull_request: nil, options: nil)
          new.create_a_codespace_for_the_authenticated_user(repository_id, ref, location, machine, working_directory, idle_timeout_minutes, display_name, pull_request, options)
        end

        def self.get_a_codespace_for_the_authenticated_user(codespace_name: nil, options: nil)
          new.get_a_codespace_for_the_authenticated_user(codespace_name, options)
        end

        def self.update_a_codespace_for_the_authenticated_user(codespace_name: nil, machine: nil, display_name: nil, recent_folders: nil, options: nil)
          new.update_a_codespace_for_the_authenticated_user(codespace_name, machine, display_name, recent_folders, options)
        end

        def self.delete_a_codespace_for_the_authenticated_user(codespace_name: nil, options: nil)
          new.delete_a_codespace_for_the_authenticated_user(codespace_name, options)
        end

        def self.export_a_codespace_for_the_authenticated_user(codespace_name: nil, options: nil)
          new.export_a_codespace_for_the_authenticated_user(codespace_name, options)
        end

        def self.get_details_about_a_codespace_export(codespace_name: nil, export_id: nil, options: nil)
          new.get_details_about_a_codespace_export(codespace_name, export_id, options)
        end

        def self.start_a_codespace_for_the_authenticated_user(codespace_name: nil, options: nil)
          new.start_a_codespace_for_the_authenticated_user(codespace_name, options)
        end

        def self.stop_a_codespace_for_the_authenticated_user(codespace_name: nil, options: nil)
          new.stop_a_codespace_for_the_authenticated_user(codespace_name, options)
        end

        def self.list_available_machine_types_for_a_repository(owner: nil, repo: nil, options: nil)
          new.list_available_machine_types_for_a_repository(owner, repo, options)
        end

        def self.list_machine_types_for_a_codespace(codespace_name: nil, options: nil)
          new.list_machine_types_for_a_codespace(codespace_name, options)
        end

        def self.list_secrets_for_the_authenticated_user(options: nil)
          new.list_secrets_for_the_authenticated_user(options)
        end

        def self.get_public_key_for_the_authenticated_user(options: nil)
          new.get_public_key_for_the_authenticated_user(options)
        end

        def self.get_a_secret_for_the_authenticated_user(secret_name: nil, options: nil)
          new.get_a_secret_for_the_authenticated_user(secret_name, options)
        end

        def self.create_or_update_a_secret_for_the_authenticated_user(secret_name: nil, encrypted_value: nil, key_id: nil, selected_repository_ids: nil, options: nil)
          new.create_or_update_a_secret_for_the_authenticated_user(secret_name, encrypted_value, key_id, selected_repository_ids, options)
        end

        def self.delete_a_secret_for_the_authenticated_user(secret_name: nil, options: nil)
          new.delete_a_secret_for_the_authenticated_user(secret_name, options)
        end

        def self.list_selected_repositories_for_a_user_secret(secret_name: nil, options: nil)
          new.list_selected_repositories_for_a_user_secret(secret_name, options)
        end

        def self.set_selected_repositories_for_a_user_secret(secret_name: nil, selected_repository_ids: nil, options: nil)
          new.set_selected_repositories_for_a_user_secret(secret_name, selected_repository_ids, options)
        end

        def self.add_a_selected_repository_to_a_user_secret(secret_name: nil, repository_id: nil, options: nil)
          new.add_a_selected_repository_to_a_user_secret(secret_name, repository_id, options)
        end

        def self.remove_a_selected_repository_from_a_user_secret(secret_name: nil, repository_id: nil, options: nil)
          new.remove_a_selected_repository_from_a_user_secret(secret_name, repository_id, options)
        end

        private

        # list codespaces in a repository for the authenticated user
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_codespaces_in_a_repository_for_the_authenticated_user(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/codespaces"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a codespace in a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] Git ref (typically a branch name) for this codespace
        # @param location [String] Location for this codespace. Assigned by IP if not provided
        # @param machine [String] Machine type to use for this codespace
        # @param working_directory [String] Working directory for this codespace
        # @param idle_timeout_minutes [Integer] Time in minutes before codespace stops from inactivity
        # @param display_name [String] Display name for this codespace
        #
        # @return CodespacesResult, CodespacesErrorResult
        def create_a_codespace_in_a_repository(owner, repo, ref, location, machine, working_directory, idle_timeout_minutes, display_name, _options)
          auth    = nil
          body    = { ref: ref, location: location, machine: machine, working_directory: working_directory, idle_timeout_minutes: idle_timeout_minutes, display_name: display_name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/codespaces"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a codespace from a pull request
        #
        # @param owner [String]
        # @param repo [String]
        # @param pull_number [Integer]
        # @param location [String] Location for this codespace. Assigned by IP if not provided
        # @param machine [String] Machine type to use for this codespace
        # @param working_directory [String] Working directory for this codespace
        # @param idle_timeout_minutes [Integer] Time in minutes before codespace stops from inactivity
        # @param display_name [String] Display name for this codespace
        #
        # @return CodespacesResult, CodespacesErrorResult
        def create_a_codespace_from_a_pull_request(owner, repo, pull_number, location, machine, working_directory, idle_timeout_minutes, display_name, _options)
          auth    = nil
          body    = { location: location, machine: machine, working_directory: working_directory, idle_timeout_minutes: idle_timeout_minutes, display_name: display_name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pulls/#{pull_number}/codespaces"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list codespaces for the authenticated user
        #
        # @params options [Hash]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_codespaces_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page], repository_id: options[:repository_id] }
          uri     = "#{Gitabu::BASE_URL}/user/codespaces"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a codespace for the authenticated user
        #
        # @param repository_id [Integer] Required. Repository id for this codespace
        # @param ref [String] Git ref (typically a branch name) for this codespace
        # @param location [String] Location for this codespace. Assigned by IP if not provided
        # @param machine [String] Machine type to use for this codespace
        # @param working_directory [String] Working directory for this codespace
        # @param idle_timeout_minutes [Integer] Time in minutes before codespace stops from inactivity
        # @param display_name [String] Display name for this codespace
        # @param pull_request [Object] Required. Pull request number for this codespace
        #
        # @return CodespacesResult, CodespacesErrorResult
        def create_a_codespace_for_the_authenticated_user(repository_id, ref, location, machine, working_directory, idle_timeout_minutes, display_name, pull_request, _options)
          auth    = nil
          body    = { repository_id: repository_id, ref: ref, location: location, machine: machine, working_directory: working_directory, idle_timeout_minutes: idle_timeout_minutes, display_name: display_name, pull_request: pull_request }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def get_a_codespace_for_the_authenticated_user(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        # @param machine [String] A valid machine to transition this codespace to.
        # @param display_name [String] Display name for this codespace
        # @param recent_folders [Array of strings] Recently opened folders inside the codespace. It is currently used by the clients to determine the folder path to load the codespace in.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def update_a_codespace_for_the_authenticated_user(codespace_name, machine, display_name, recent_folders, _options)
          auth    = nil
          body    = { machine: machine, display_name: display_name, recent_folders: recent_folders }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def delete_a_codespace_for_the_authenticated_user(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # export a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def export_a_codespace_for_the_authenticated_user(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}/exports"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get details about a codespace export
        #
        # @param codespace_name [String] The name of the codespace.
        # @param export_id [String] The ID of the export operation, or latest. Currently only latest is currently supported.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def get_details_about_a_codespace_export(codespace_name, export_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}/exports/#{export_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # start a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def start_a_codespace_for_the_authenticated_user(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}/start"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # stop a codespace for the authenticated user
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def stop_a_codespace_for_the_authenticated_user(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}/stop"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list available machine types for a repository
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_available_machine_types_for_a_repository(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { location: options[:location] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/codespaces/machines"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list machine types for a codespace
        #
        # @param codespace_name [String] The name of the codespace.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_machine_types_for_a_codespace(codespace_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/#{codespace_name}/machines"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list secrets for the authenticated user
        #
        # @params options [Hash]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_secrets_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get public key for the authenticated user
        #
        # @params options [Hash]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def get_public_key_for_the_authenticated_user(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/public-key"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a secret for the authenticated user
        #
        # @param secret_name [String] secret_name parameter
        #
        # @return CodespacesResult, CodespacesErrorResult
        def get_a_secret_for_the_authenticated_user(secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create or update a secret for the authenticated user
        #
        # @param secret_name [String] secret_name parameter
        # @param encrypted_value [String] Value for your secret, encrypted with LibSodium using the public key retrieved from the Get the public key for the authenticated user endpoint.
        # @param key_id [String] Required. ID of the key you used to encrypt the secret.
        # @param selected_repository_ids [Array of strings] An array of repository ids that can access the user secret. You can manage the list of selected repositories using the List selected repositories for a user secret, Set selected repositories for a user secret, and Remove a selected repository from a user secret endpoints.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def create_or_update_a_secret_for_the_authenticated_user(secret_name, encrypted_value, key_id, selected_repository_ids, _options)
          auth    = nil
          body    = { encrypted_value: encrypted_value, key_id: key_id, selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a secret for the authenticated user
        #
        # @param secret_name [String] secret_name parameter
        #
        # @return CodespacesResult, CodespacesErrorResult
        def delete_a_secret_for_the_authenticated_user(secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list selected repositories for a user secret
        #
        # @param secret_name [String] secret_name parameter
        #
        # @return CodespacesResult, CodespacesErrorResult
        def list_selected_repositories_for_a_user_secret(secret_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set selected repositories for a user secret
        #
        # @param secret_name [String] secret_name parameter
        # @param selected_repository_ids [Array of integers] Required. An array of repository ids for which a codespace can access the secret. You can manage the list of selected repositories using the List selected repositories for a user secret, Add a selected repository to a user secret, and Remove a selected repository from a user secret endpoints.
        #
        # @return CodespacesResult, CodespacesErrorResult
        def set_selected_repositories_for_a_user_secret(secret_name, selected_repository_ids, _options)
          auth    = nil
          body    = { selected_repository_ids: selected_repository_ids }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add a selected repository to a user secret
        #
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def add_a_selected_repository_to_a_user_secret(secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a selected repository from a user secret
        #
        # @param secret_name [String] secret_name parameter
        # @param repository_id [Integer]
        #
        # @return CodespacesResult, CodespacesErrorResult
        def remove_a_selected_repository_from_a_user_secret(secret_name, repository_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/codespaces/secrets/#{secret_name}/repositories/#{repository_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CodespacesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CodespacesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
