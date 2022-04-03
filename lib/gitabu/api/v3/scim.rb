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
      # Class to display Scim result
      class ScimResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ScimErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Scim endpoints.
      class Scim
        def self.list_scim_provisioned_identities(org: nil, options: nil)
          new.list_scim_provisioned_identities(org, options)
        end

        def self.provision_and_invite_a_scim_user(org: nil, username: nil, displayname: nil, name: nil, emails: nil, schemas: nil, externalid: nil, groups: nil, active: nil, options: nil)
          new.provision_and_invite_a_scim_user(org, username, displayname, name, emails, schemas, externalid, groups, active, options)
        end

        def self.get_scim_provisioning_information_for_a_user(org: nil, scim_user_id: nil, options: nil)
          new.get_scim_provisioning_information_for_a_user(org, scim_user_id, options)
        end

        def self.update_a_provisioned_organization_membership(org: nil, scim_user_id: nil, schemas: nil, displayname: nil, externalid: nil, groups: nil, active: nil, username: nil, name: nil, emails: nil, options: nil)
          new.update_a_provisioned_organization_membership(org, scim_user_id, schemas, displayname, externalid, groups, active, username, name, emails, options)
        end

        def self.update_an_attribute_for_a_scim_user(org: nil, scim_user_id: nil, schemas: nil, operations: nil, options: nil)
          new.update_an_attribute_for_a_scim_user(org, scim_user_id, schemas, operations, options)
        end

        def self.delete_a_scim_user_from_an_organization(org: nil, scim_user_id: nil, options: nil)
          new.delete_a_scim_user_from_an_organization(org, scim_user_id, options)
        end

        private

        # list scim provisioned identities
        #
        # @param org [String]
        #
        # @return ScimResult, ScimErrorResult
        def list_scim_provisioned_identities(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { startIndex: options[:startIndex], count: options[:count], filter: options[:filter] }
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # provision and invite a scim user
        #
        # @param org [String]
        # @param username [String] Required. Configured by the admin. Could be an email, login, or username
        # @param displayname [String] The name of the user, suitable for display to end-users
        # @param name [Object] Required.
        # @param emails [Array of objects] Required. user emails
        # @param schemas [Array of strings]
        # @param externalid [String]
        # @param groups [Array of strings]
        # @param active [Boolean]
        #
        # @return ScimResult, ScimErrorResult
        def provision_and_invite_a_scim_user(org, username, displayname, name, emails, schemas, externalid, groups, active, _options)
          auth    = nil
          body    = { username: username, displayname: displayname, name: name, emails: emails, schemas: schemas, externalid: externalid, groups: groups, active: active }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get scim provisioning information for a user
        #
        # @param org [String]
        # @param scim_user_id [String] scim_user_id parameter
        #
        # @return ScimResult, ScimErrorResult
        def get_scim_provisioning_information_for_a_user(org, scim_user_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a provisioned organization membership
        #
        # @param org [String]
        # @param scim_user_id [String] scim_user_id parameter
        # @param schemas [Array of strings]
        # @param displayname [String] The name of the user, suitable for display to end-users
        # @param externalid [String]
        # @param groups [Array of strings]
        # @param active [Boolean]
        # @param username [String] Required. Configured by the admin. Could be an email, login, or username
        # @param name [Object] Required.
        # @param emails [Array of objects] Required. user emails
        #
        # @return ScimResult, ScimErrorResult
        def update_a_provisioned_organization_membership(org, scim_user_id, schemas, displayname, externalid, groups, active, username, name, emails, _options)
          auth    = nil
          body    = { schemas: schemas, displayname: displayname, externalid: externalid, groups: groups, active: active, username: username, name: name, emails: emails }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an attribute for a scim user
        #
        # @param org [String]
        # @param scim_user_id [String] scim_user_id parameter
        # @param schemas [Array of strings]
        # @param operations [Array of objects] Required. Set of operations to be performed
        #
        # @return ScimResult, ScimErrorResult
        def update_an_attribute_for_a_scim_user(org, scim_user_id, schemas, operations, _options)
          auth    = nil
          body    = { schemas: schemas, operations: operations }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a scim user from an organization
        #
        # @param org [String]
        # @param scim_user_id [String] scim_user_id parameter
        #
        # @return ScimResult, ScimErrorResult
        def delete_a_scim_user_from_an_organization(org, scim_user_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/organizations/#{org}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ScimResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ScimErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
