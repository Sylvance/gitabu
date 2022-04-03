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
      # Class to display Packages result
      class PackagesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class PackagesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Packages endpoints.
      class Packages
        def self.list_packages_for_an_organization(org: nil, options: nil)
          new.list_packages_for_an_organization(org, options)
        end

        def self.get_a_package_for_an_organization(package_type: nil, package_name: nil, org: nil, options: nil)
          new.get_a_package_for_an_organization(package_type, package_name, org, options)
        end

        def self.delete_a_package_for_an_organization(package_type: nil, package_name: nil, org: nil, options: nil)
          new.delete_a_package_for_an_organization(package_type, package_name, org, options)
        end

        def self.restore_a_package_for_an_organization(package_type: nil, package_name: nil, org: nil, options: nil)
          new.restore_a_package_for_an_organization(package_type, package_name, org, options)
        end

        def self.get_all_package_versions_for_a_package_owned_by_an_organization(package_type: nil, package_name: nil, org: nil, options: nil)
          new.get_all_package_versions_for_a_package_owned_by_an_organization(package_type, package_name, org, options)
        end

        def self.get_a_package_version_for_an_organization(package_type: nil, package_name: nil, org: nil, package_version_id: nil, options: nil)
          new.get_a_package_version_for_an_organization(package_type, package_name, org, package_version_id, options)
        end

        def self.delete_package_version_for_an_organization(package_type: nil, package_name: nil, org: nil, package_version_id: nil, options: nil)
          new.delete_package_version_for_an_organization(package_type, package_name, org, package_version_id, options)
        end

        def self.restore_package_version_for_an_organization(package_type: nil, package_name: nil, org: nil, package_version_id: nil, options: nil)
          new.restore_package_version_for_an_organization(package_type, package_name, org, package_version_id, options)
        end

        def self.list_packages_for_the_authenticated_user_namespace(options: nil)
          new.list_packages_for_the_authenticated_user_namespace(options)
        end

        def self.get_a_package_for_the_authenticated_user(package_type: nil, package_name: nil, options: nil)
          new.get_a_package_for_the_authenticated_user(package_type, package_name, options)
        end

        def self.delete_a_package_for_the_authenticated_user(package_type: nil, package_name: nil, options: nil)
          new.delete_a_package_for_the_authenticated_user(package_type, package_name, options)
        end

        def self.restore_a_package_for_the_authenticated_user(package_type: nil, package_name: nil, options: nil)
          new.restore_a_package_for_the_authenticated_user(package_type, package_name, options)
        end

        def self.get_all_package_versions_for_a_package_owned_by_the_authenticated_user(package_type: nil, package_name: nil, options: nil)
          new.get_all_package_versions_for_a_package_owned_by_the_authenticated_user(package_type, package_name, options)
        end

        def self.get_a_package_version_for_the_authenticated_user(package_type: nil, package_name: nil, package_version_id: nil, options: nil)
          new.get_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, options)
        end

        def self.delete_a_package_version_for_the_authenticated_user(package_type: nil, package_name: nil, package_version_id: nil, options: nil)
          new.delete_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, options)
        end

        def self.restore_a_package_version_for_the_authenticated_user(package_type: nil, package_name: nil, package_version_id: nil, options: nil)
          new.restore_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, options)
        end

        def self.list_packages_for_a_user(username: nil, options: nil)
          new.list_packages_for_a_user(username, options)
        end

        def self.get_a_package_for_a_user(package_type: nil, package_name: nil, username: nil, options: nil)
          new.get_a_package_for_a_user(package_type, package_name, username, options)
        end

        def self.delete_a_package_for_a_user(package_type: nil, package_name: nil, username: nil, options: nil)
          new.delete_a_package_for_a_user(package_type, package_name, username, options)
        end

        def self.restore_a_package_for_a_user(package_type: nil, package_name: nil, username: nil, options: nil)
          new.restore_a_package_for_a_user(package_type, package_name, username, options)
        end

        def self.get_all_package_versions_for_a_package_owned_by_a_user(package_type: nil, package_name: nil, username: nil, options: nil)
          new.get_all_package_versions_for_a_package_owned_by_a_user(package_type, package_name, username, options)
        end

        def self.get_a_package_version_for_a_user(package_type: nil, package_name: nil, package_version_id: nil, username: nil, options: nil)
          new.get_a_package_version_for_a_user(package_type, package_name, package_version_id, username, options)
        end

        def self.delete_package_version_for_a_user(package_type: nil, package_name: nil, username: nil, package_version_id: nil, options: nil)
          new.delete_package_version_for_a_user(package_type, package_name, username, package_version_id, options)
        end

        def self.restore_package_version_for_a_user(package_type: nil, package_name: nil, username: nil, package_version_id: nil, options: nil)
          new.restore_package_version_for_a_user(package_type, package_name, username, package_version_id, options)
        end

        private

        # list packages for an organization
        #
        # @param org [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def list_packages_for_an_organization(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { package_type: options[:package_type], visibility: options[:visibility] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_for_an_organization(package_type, package_name, org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a package for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_a_package_for_an_organization(package_type, package_name, org, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore a package for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_a_package_for_an_organization(package_type, package_name, org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { token: options[:token] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all package versions for a package owned by an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def get_all_package_versions_for_a_package_owned_by_an_organization(package_type, package_name, org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page], state: options[:state] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}/versions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package version for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_version_for_an_organization(package_type, package_name, org, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete package version for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_package_version_for_an_organization(package_type, package_name, org, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore package version for an organization
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param org [String]
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_package_version_for_an_organization(package_type, package_name, org, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list packages for the authenticated user's namespace
        #
        # @params options [Hash]
        #
        # @return PackagesResult, PackagesErrorResult
        def list_packages_for_the_authenticated_user_namespace(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { package_type: options[:package_type], visibility: options[:visibility] }
          uri     = "#{Gitabu::BASE_URL}/user/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_for_the_authenticated_user(package_type, package_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a package for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_a_package_for_the_authenticated_user(package_type, package_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore a package for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_a_package_for_the_authenticated_user(package_type, package_name, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { token: options[:token] }
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all package versions for a package owned by the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        #
        # @return PackagesResult, PackagesErrorResult
        def get_all_package_versions_for_a_package_owned_by_the_authenticated_user(package_type, package_name, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { page: options[:page], per_page: options[:per_page], state: options[:state] }
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}/versions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package version for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a package version for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore a package version for the authenticated user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_a_package_version_for_the_authenticated_user(package_type, package_name, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/packages/#{package_type}/#{package_name}/versions/#{package_version_id}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list packages for a user
        #
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def list_packages_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { package_type: options[:package_type], visibility: options[:visibility] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_for_a_user(package_type, package_name, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a package for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_a_package_for_a_user(package_type, package_name, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore a package for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_a_package_for_a_user(package_type, package_name, username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { token: options[:token] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get all package versions for a package owned by a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def get_all_package_versions_for_a_package_owned_by_a_user(package_type, package_name, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}/versions"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a package version for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param package_version_id [Integer] Unique identifier of the package version.
        # @param username [String]
        #
        # @return PackagesResult, PackagesErrorResult
        def get_a_package_version_for_a_user(package_type, package_name, package_version_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete package version for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def delete_package_version_for_a_user(package_type, package_name, username, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # restore package version for a user
        #
        # @param package_type [String] The type of supported package. Can be one of npm, maven, rubygems, nuget, docker, or container. Packages in GitHub's Gradle registry have the type maven. Docker images pushed to GitHub's Container registry (ghcr.io) have the type container. You can use the type docker to find images that were pushed to GitHub's Docker registry (docker.pkg.github.com), even if these have now been migrated to the Container registry.
        # @param package_name [String] The name of the package.
        # @param username [String]
        # @param package_version_id [Integer] Unique identifier of the package version.
        #
        # @return PackagesResult, PackagesErrorResult
        def restore_package_version_for_a_user(package_type, package_name, username, package_version_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/packages/#{package_type}/#{package_name}/versions/#{package_version_id}/restore"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PackagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PackagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
