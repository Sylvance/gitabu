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
      # Class to display Enterprise admin result
      class EnterpriseAdminResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class EnterpriseAdminErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # EnterpriseAdmin endpoints.
      class EnterpriseAdmin
        def self.get_the_audit_log_for_an_enterprise(enterprise: nil, options: nil)
          new.get_the_audit_log_for_an_enterprise(enterprise, options)
        end

        def self.get_github_actions_billing_for_an_enterprise(enterprise: nil, options: nil)
          new.get_github_actions_billing_for_an_enterprise(enterprise, options)
        end

        def self.get_github_advanced_security_active_committers_for_an_enterprise(enterprise: nil, options: nil)
          new.get_github_advanced_security_active_committers_for_an_enterprise(enterprise, options)
        end

        def self.get_github_packages_billing_for_an_enterprise(enterprise: nil, options: nil)
          new.get_github_packages_billing_for_an_enterprise(enterprise, options)
        end

        def self.get_shared_storage_billing_for_an_enterprise(enterprise: nil, options: nil)
          new.get_shared_storage_billing_for_an_enterprise(enterprise, options)
        end

        def self.list_provisioned_scim_groups_for_an_enterprise(enterprise: nil, options: nil)
          new.list_provisioned_scim_groups_for_an_enterprise(enterprise, options)
        end

        def self.provision_a_scim_enterprise_group_and_invite_users(enterprise: nil, schemas: nil, displayname: nil, members: nil, options: nil)
          new.provision_a_scim_enterprise_group_and_invite_users(enterprise, schemas, displayname, members, options)
        end

        def self.get_scim_provisioning_information_for_an_enterprise_group(enterprise: nil, scim_group_id: nil, options: nil)
          new.get_scim_provisioning_information_for_an_enterprise_group(enterprise, scim_group_id, options)
        end

        def self.set_scim_information_for_a_provisioned_enterprise_group(enterprise: nil, scim_group_id: nil, schemas: nil, displayname: nil, members: nil, options: nil)
          new.set_scim_information_for_a_provisioned_enterprise_group(enterprise, scim_group_id, schemas, displayname, members, options)
        end

        def self.update_an_attribute_for_a_scim_enterprise_group(enterprise: nil, scim_group_id: nil, schemas: nil, operations: nil, options: nil)
          new.update_an_attribute_for_a_scim_enterprise_group(enterprise, scim_group_id, schemas, operations, options)
        end

        def self.delete_a_scim_group_from_an_enterprise(enterprise: nil, scim_group_id: nil, options: nil)
          new.delete_a_scim_group_from_an_enterprise(enterprise, scim_group_id, options)
        end

        def self.list_scim_provisioned_identities_for_an_enterprise(enterprise: nil, options: nil)
          new.list_scim_provisioned_identities_for_an_enterprise(enterprise, options)
        end

        def self.provision_and_invite_a_scim_enterprise_user(enterprise: nil, schemas: nil, username: nil, name: nil, emails: nil, groups: nil, options: nil)
          new.provision_and_invite_a_scim_enterprise_user(enterprise, schemas, username, name, emails, groups, options)
        end

        def self.get_scim_provisioning_information_for_an_enterprise_user(enterprise: nil, scim_user_id: nil, options: nil)
          new.get_scim_provisioning_information_for_an_enterprise_user(enterprise, scim_user_id, options)
        end

        def self.set_scim_information_for_a_provisioned_enterprise_user(enterprise: nil, scim_user_id: nil, schemas: nil, username: nil, name: nil, emails: nil, groups: nil, options: nil)
          new.set_scim_information_for_a_provisioned_enterprise_user(enterprise, scim_user_id, schemas, username, name, emails, groups, options)
        end

        def self.update_an_attribute_for_a_scim_enterprise_user(enterprise: nil, scim_user_id: nil, schemas: nil, operations: nil, options: nil)
          new.update_an_attribute_for_a_scim_enterprise_user(enterprise, scim_user_id, schemas, operations, options)
        end

        def self.delete_a_scim_user_from_an_enterprise(enterprise: nil, scim_user_id: nil, options: nil)
          new.delete_a_scim_user_from_an_enterprise(enterprise, scim_user_id, options)
        end

        private

        # get the audit log for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_the_audit_log_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { phrase: options[:phrase], include: options[:include], after: options[:after], before: options[:before], order: options[:order], page: options[:page], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/audit-log"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github actions billing for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_github_actions_billing_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/settings/billing/actions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github advanced security active committers for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_github_advanced_security_active_committers_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/settings/billing/advanced-security"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github packages billing for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_github_packages_billing_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/settings/billing/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get shared storage billing for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_shared_storage_billing_for_an_enterprise(enterprise, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/enterprises/#{enterprise}/settings/billing/shared-storage"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list provisioned scim groups for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def list_provisioned_scim_groups_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { startIndex: options[:startIndex], count: options[:count], filter: options[:filter], excludedAttributes: options[:excludedAttributes] }
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # provision a scim enterprise group and invite users
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param displayname [String] Required. The name of the SCIM group. This must match the GitHub organization that the group maps to.
        # @param members [Array of objects]
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def provision_a_scim_enterprise_group_and_invite_users(enterprise, schemas, displayname, members, _options)
          auth    = nil
          body    = { schemas: schemas, displayname: displayname, members: members }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get scim provisioning information for an enterprise group
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_group_id [String] Identifier generated by the GitHub SCIM endpoint.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_scim_provisioning_information_for_an_enterprise_group(enterprise, scim_group_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { excludedAttributes: options[:excludedAttributes] }
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups/#{scim_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set scim information for a provisioned enterprise group
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_group_id [String] Identifier generated by the GitHub SCIM endpoint.
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param displayname [String] Required. The name of the SCIM group. This must match the GitHub organization that the group maps to.
        # @param members [Array of objects]
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def set_scim_information_for_a_provisioned_enterprise_group(enterprise, scim_group_id, schemas, displayname, members, _options)
          auth    = nil
          body    = { schemas: schemas, displayname: displayname, members: members }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups/#{scim_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an attribute for a scim enterprise group
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_group_id [String] Identifier generated by the GitHub SCIM endpoint.
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param operations [Array of objects] Required. Array of SCIM operations.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def update_an_attribute_for_a_scim_enterprise_group(enterprise, scim_group_id, schemas, operations, _options)
          auth    = nil
          body    = { schemas: schemas, operations: operations }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups/#{scim_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a scim group from an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_group_id [String] Identifier generated by the GitHub SCIM endpoint.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def delete_a_scim_group_from_an_enterprise(enterprise, scim_group_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Groups/#{scim_group_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list scim provisioned identities for an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def list_scim_provisioned_identities_for_an_enterprise(enterprise, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { startIndex: options[:startIndex], count: options[:count], filter: options[:filter] }
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # provision and invite a scim enterprise user
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param username [String] Required. The username for the user.
        # @param name [Object] Required.
        # @param emails [Array of objects] Required. List of user emails.
        # @param groups [Array of objects] List of SCIM group IDs the user is a member of.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def provision_and_invite_a_scim_enterprise_user(enterprise, schemas, username, name, emails, groups, _options)
          auth    = nil
          body    = { schemas: schemas, username: username, name: name, emails: emails, groups: groups }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get scim provisioning information for an enterprise user
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_user_id [String] scim_user_id parameter
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def get_scim_provisioning_information_for_an_enterprise_user(enterprise, scim_user_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set scim information for a provisioned enterprise user
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_user_id [String] scim_user_id parameter
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param username [String] Required. The username for the user.
        # @param name [Object] Required.
        # @param emails [Array of objects] Required. List of user emails.
        # @param groups [Array of objects] List of SCIM group IDs the user is a member of.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def set_scim_information_for_a_provisioned_enterprise_user(enterprise, scim_user_id, schemas, username, name, emails, groups, _options)
          auth    = nil
          body    = { schemas: schemas, username: username, name: name, emails: emails, groups: groups }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an attribute for a scim enterprise user
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_user_id [String] scim_user_id parameter
        # @param schemas [Array of strings] Required. The SCIM schema URIs.
        # @param operations [Array of objects] Required. Array of SCIM operations.
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def update_an_attribute_for_a_scim_enterprise_user(enterprise, scim_user_id, schemas, operations, _options)
          auth    = nil
          body    = { schemas: schemas, operations: operations }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a scim user from an enterprise
        #
        # @param enterprise [String] The slug version of the enterprise name. You can also substitute this value with the enterprise id.
        # @param scim_user_id [String] scim_user_id parameter
        #
        # @return EnterpriseAdminResult, EnterpriseAdminErrorResult
        def delete_a_scim_user_from_an_enterprise(enterprise, scim_user_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/scim/v2/enterprises/#{enterprise}/Users/#{scim_user_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            EnterpriseAdminResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            EnterpriseAdminErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
