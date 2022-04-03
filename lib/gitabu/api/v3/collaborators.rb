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
      # Class to display Collaborators result
      class CollaboratorsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class CollaboratorsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Collaborators endpoints.
      class Collaborators
        def self.list_repository_collaborators(owner: nil, repo: nil, options: nil)
          new.list_repository_collaborators(owner, repo, options)
        end

        def self.check_if_a_user_is_a_repository_collaborator(owner: nil, repo: nil, username: nil, options: nil)
          new.check_if_a_user_is_a_repository_collaborator(owner, repo, username, options)
        end

        def self.add_a_repository_collaborator(owner: nil, repo: nil, username: nil, permission: nil, permissions: nil, options: nil)
          new.add_a_repository_collaborator(owner, repo, username, permission, permissions, options)
        end

        def self.remove_a_repository_collaborator(owner: nil, repo: nil, username: nil, options: nil)
          new.remove_a_repository_collaborator(owner, repo, username, options)
        end

        def self.get_repository_permissions_for_a_user(owner: nil, repo: nil, username: nil, options: nil)
          new.get_repository_permissions_for_a_user(owner, repo, username, options)
        end

        def self.list_repository_invitations(owner: nil, repo: nil, options: nil)
          new.list_repository_invitations(owner, repo, options)
        end

        def self.update_a_repository_invitation(owner: nil, repo: nil, invitation_id: nil, permissions: nil, options: nil)
          new.update_a_repository_invitation(owner, repo, invitation_id, permissions, options)
        end

        def self.delete_a_repository_invitation(owner: nil, repo: nil, invitation_id: nil, options: nil)
          new.delete_a_repository_invitation(owner, repo, invitation_id, options)
        end

        def self.list_repository_invitations_for_the_authenticated_user(options: nil)
          new.list_repository_invitations_for_the_authenticated_user(options)
        end

        def self.accept_a_repository_invitation(invitation_id: nil, options: nil)
          new.accept_a_repository_invitation(invitation_id, options)
        end

        def self.decline_a_repository_invitation(invitation_id: nil, options: nil)
          new.decline_a_repository_invitation(invitation_id, options)
        end

        private

        # list repository collaborators
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def list_repository_collaborators(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { affiliation: options[:affiliation], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/collaborators"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a user is a repository collaborator
        #
        # @param owner [String]
        # @param repo [String]
        # @param username [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def check_if_a_user_is_a_repository_collaborator(owner, repo, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add a repository collaborator
        #
        # @param owner [String]
        # @param repo [String]
        # @param username [String]
        # @param permission [String] The permission to grant the collaborator. Only valid on organization-owned repositories. Can be one of:
        #   * pull - can pull, but not push to or administer this repository.
        #   * push - can pull and push, but not administer this repository.
        #   * admin - can pull, push and administer this repository.
        #   * maintain - Recommended for project managers who need to manage the repository without access to sensitive or destructive actions.
        #   * triage - Recommended for contributors who need to proactively manage issues and pull requests without write access.
        #   * custom repository role name - A custom repository role, if the owning organization has defined any.Default: push
        # @param permissions [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def add_a_repository_collaborator(_owner, _repo, _username, permission, permissions, _options)
          auth    = nil
          body    = { permission: permission, permissions: permissions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}Cannot assign #{member} permission of #{role name}
"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove a repository collaborator
        #
        # @param owner [String]
        # @param repo [String]
        # @param username [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def remove_a_repository_collaborator(owner, repo, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get repository permissions for a user
        #
        # @param owner [String]
        # @param repo [String]
        # @param username [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def get_repository_permissions_for_a_user(owner, repo, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/collaborators/#{username}/permission"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository invitations
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def list_repository_invitations(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a repository invitation
        #
        # @param owner [String]
        # @param repo [String]
        # @param invitation_id [Integer] invitation_id parameter
        # @param permissions [String] The permissions that the associated user will have on the repository. Valid values are read, write, maintain, triage, and admin.
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def update_a_repository_invitation(owner, repo, invitation_id, permissions, _options)
          auth    = nil
          body    = { permissions: permissions }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/invitations/#{invitation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository invitation
        #
        # @param owner [String]
        # @param repo [String]
        # @param invitation_id [Integer] invitation_id parameter
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def delete_a_repository_invitation(owner, repo, invitation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/invitations/#{invitation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository invitations for the authenticated user
        #
        # @params options [Hash]
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def list_repository_invitations_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/repository_invitations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # accept a repository invitation
        #
        # @param invitation_id [Integer] invitation_id parameter
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def accept_a_repository_invitation(invitation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/repository_invitations/#{invitation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # decline a repository invitation
        #
        # @param invitation_id [Integer] invitation_id parameter
        #
        # @return CollaboratorsResult, CollaboratorsErrorResult
        def decline_a_repository_invitation(invitation_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/repository_invitations/#{invitation_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            CollaboratorsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            CollaboratorsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
