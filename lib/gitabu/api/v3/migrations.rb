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
      # Class to display Migrations result
      class MigrationsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class MigrationsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Migrations endpoints.
      class Migrations
        def self.list_organization_migrations(org: nil, options: nil)
          new.list_organization_migrations(org, options)
        end

        def self.start_an_organization_migration(org: nil, repositories: nil, lock_repositories: nil, exclude_attachments: nil, exclude_releases: nil, exclude_owner_projects: nil, exclude: nil, options: nil)
          new.start_an_organization_migration(org, repositories, lock_repositories, exclude_attachments, exclude_releases, exclude_owner_projects, exclude, options)
        end

        def self.get_an_organization_migration_status(org: nil, migration_id: nil, options: nil)
          new.get_an_organization_migration_status(org, migration_id, options)
        end

        def self.download_an_organization_migration_archive(org: nil, migration_id: nil, options: nil)
          new.download_an_organization_migration_archive(org, migration_id, options)
        end

        def self.delete_an_organization_migration_archive(org: nil, migration_id: nil, options: nil)
          new.delete_an_organization_migration_archive(org, migration_id, options)
        end

        def self.unlock_an_organization_repository(org: nil, migration_id: nil, repo_name: nil, options: nil)
          new.unlock_an_organization_repository(org, migration_id, repo_name, options)
        end

        def self.list_repositories_in_an_organization_migration(org: nil, migration_id: nil, options: nil)
          new.list_repositories_in_an_organization_migration(org, migration_id, options)
        end

        def self.get_an_import_status(owner: nil, repo: nil, options: nil)
          new.get_an_import_status(owner, repo, options)
        end

        def self.start_an_import(owner: nil, repo: nil, vcs_url: nil, vcs: nil, vcs_username: nil, vcs_password: nil, tfvc_project: nil, options: nil)
          new.start_an_import(owner, repo, vcs_url, vcs, vcs_username, vcs_password, tfvc_project, options)
        end

        def self.update_an_import(owner: nil, repo: nil, vcs_username: nil, vcs_password: nil, vcs: nil, tfvc_project: nil, options: nil)
          new.update_an_import(owner, repo, vcs_username, vcs_password, vcs, tfvc_project, options)
        end

        def self.cancel_an_import(owner: nil, repo: nil, options: nil)
          new.cancel_an_import(owner, repo, options)
        end

        def self.get_commit_authors(owner: nil, repo: nil, options: nil)
          new.get_commit_authors(owner, repo, options)
        end

        def self.map_a_commit_author(owner: nil, repo: nil, author_id: nil, email: nil, name: nil, options: nil)
          new.map_a_commit_author(owner, repo, author_id, email, name, options)
        end

        def self.get_large_files(owner: nil, repo: nil, options: nil)
          new.get_large_files(owner, repo, options)
        end

        def self.update_git_lfs_preference(owner: nil, repo: nil, use_lfs: nil, options: nil)
          new.update_git_lfs_preference(owner, repo, use_lfs, options)
        end

        def self.list_user_migrations(options: nil)
          new.list_user_migrations(options)
        end

        def self.start_a_user_migration(lock_repositories: nil, exclude_attachments: nil, exclude_releases: nil, exclude_owner_projects: nil, exclude: nil, repositories: nil, options: nil)
          new.start_a_user_migration(lock_repositories, exclude_attachments, exclude_releases, exclude_owner_projects, exclude, repositories, options)
        end

        def self.get_a_user_migration_status(migration_id: nil, options: nil)
          new.get_a_user_migration_status(migration_id, options)
        end

        def self.download_a_user_migration_archive(migration_id: nil, options: nil)
          new.download_a_user_migration_archive(migration_id, options)
        end

        def self.delete_a_user_migration_archive(migration_id: nil, options: nil)
          new.delete_a_user_migration_archive(migration_id, options)
        end

        def self.unlock_a_user_repository(migration_id: nil, repo_name: nil, options: nil)
          new.unlock_a_user_repository(migration_id, repo_name, options)
        end

        def self.list_repositories_for_a_user_migration(migration_id: nil, options: nil)
          new.list_repositories_for_a_user_migration(migration_id, options)
        end

        private

        # list organization migrations
        #
        # @param org [String]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def list_organization_migrations(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page], exclude: options[:exclude] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # start an organization migration
        #
        # @param org [String]
        # @param repositories [Array of strings] Required. A list of arrays indicating which repositories should be migrated.
        # @param lock_repositories [Boolean] Indicates whether repositories should be locked (to prevent manipulation) while migrating data.
        # @param exclude_attachments [Boolean] Indicates whether attachments should be excluded from the migration (to reduce migration archive file size).
        # @param exclude_releases [Boolean] Indicates whether releases should be excluded from the migration (to reduce migration archive file size).
        # @param exclude_owner_projects [Boolean] Indicates whether projects owned by the organization or users should be excluded. from the migration.
        # @param exclude [Array of strings]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def start_an_organization_migration(org, repositories, lock_repositories, exclude_attachments, exclude_releases, exclude_owner_projects, exclude, _options)
          auth    = nil
          body    = { repositories: repositories, lock_repositories: lock_repositories, exclude_attachments: exclude_attachments, exclude_releases: exclude_releases, exclude_owner_projects: exclude_owner_projects, exclude: exclude }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an organization migration status
        #
        # @param org [String]
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def get_an_organization_migration_status(org, migration_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { exclude: options[:exclude] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations/#{migration_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download an organization migration archive
        #
        # @param org [String]
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def download_an_organization_migration_archive(org, migration_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations/#{migration_id}/archive"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an organization migration archive
        #
        # @param org [String]
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def delete_an_organization_migration_archive(org, migration_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations/#{migration_id}/archive"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unlock an organization repository
        #
        # @param org [String]
        # @param migration_id [Integer] migration_id parameter
        # @param repo_name [String] repo_name parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def unlock_an_organization_repository(org, migration_id, repo_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations/#{migration_id}/repos/#{repo_name}/lock"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories in an organization migration
        #
        # @param org [String]
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def list_repositories_in_an_organization_migration(org, migration_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/migrations/#{migration_id}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get an import status
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def get_an_import_status(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # start an import
        #
        # @param owner [String]
        # @param repo [String]
        # @param vcs_url [String] Required. The URL of the originating repository.
        # @param vcs [String] The originating VCS type. Can be one of subversion, git, mercurial, or tfvc. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
        # @param vcs_username [String] If authentication is required, the username to provide to vcs_url.
        # @param vcs_password [String] If authentication is required, the password to provide to vcs_url.
        # @param tfvc_project [String] For a tfvc import, the name of the project that is being imported.
        #
        # @return MigrationsResult, MigrationsErrorResult
        def start_an_import(owner, repo, vcs_url, vcs, vcs_username, vcs_password, tfvc_project, _options)
          auth    = nil
          body    = { vcs_url: vcs_url, vcs: vcs, vcs_username: vcs_username, vcs_password: vcs_password, tfvc_project: tfvc_project }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an import
        #
        # @param owner [String]
        # @param repo [String]
        # @param vcs_username [String] The username to provide to the originating repository.
        # @param vcs_password [String] The password to provide to the originating repository.
        # @param vcs [String] The type of version control system you are migrating from.
        # @param tfvc_project [String] For a tfvc import, the name of the project that is being imported.
        #
        # @return MigrationsResult, MigrationsErrorResult
        def update_an_import(owner, repo, vcs_username, vcs_password, vcs, tfvc_project, _options)
          auth    = nil
          body    = { vcs_username: vcs_username, vcs_password: vcs_password, vcs: vcs, tfvc_project: tfvc_project }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # cancel an import
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def cancel_an_import(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get commit authors
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def get_commit_authors(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import/authors"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # map a commit author
        #
        # @param owner [String]
        # @param repo [String]
        # @param author_id [Integer]
        # @param email [String] The new Git author email.
        # @param name [String] The new Git author name.
        #
        # @return MigrationsResult, MigrationsErrorResult
        def map_a_commit_author(owner, repo, author_id, email, name, _options)
          auth    = nil
          body    = { email: email, name: name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import/authors/#{author_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get large files
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def get_large_files(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import/large_files"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update git lfs preference
        #
        # @param owner [String]
        # @param repo [String]
        # @param use_lfs [String] Required. Can be one of opt_in (large files will be stored using Git LFS) or opt_out (large files will be removed during the import).
        #
        # @return MigrationsResult, MigrationsErrorResult
        def update_git_lfs_preference(owner, repo, use_lfs, _options)
          auth    = nil
          body    = { use_lfs: use_lfs }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/import/lfs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list user migrations
        #
        # @params options [Hash]
        #
        # @return MigrationsResult, MigrationsErrorResult
        def list_user_migrations(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/migrations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # start a user migration
        #
        # @param lock_repositories [Boolean] Lock the repositories being migrated at the start of the migration
        # @param exclude_attachments [Boolean] Do not include attachments in the migration
        # @param exclude_releases [Boolean] Do not include releases in the migration
        # @param exclude_owner_projects [Boolean] Indicates whether projects owned by the organization or users should be excluded.
        # @param exclude [Array of strings] Exclude attributes from the API response to improve performance
        # @param repositories [Array of strings] Required.
        #
        # @return MigrationsResult, MigrationsErrorResult
        def start_a_user_migration(lock_repositories, exclude_attachments, exclude_releases, exclude_owner_projects, exclude, repositories, _options)
          auth    = nil
          body    = { lock_repositories: lock_repositories, exclude_attachments: exclude_attachments, exclude_releases: exclude_releases, exclude_owner_projects: exclude_owner_projects, exclude: exclude, repositories: repositories }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/migrations"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a user migration status
        #
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def get_a_user_migration_status(migration_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { exclude: options[:exclude] }
          uri     = "#{Gitabu::BASE_URL}/user/migrations/#{migration_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # download a user migration archive
        #
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def download_a_user_migration_archive(migration_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/migrations/#{migration_id}/archive"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a user migration archive
        #
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def delete_a_user_migration_archive(migration_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/migrations/#{migration_id}/archive"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unlock a user repository
        #
        # @param migration_id [Integer] migration_id parameter
        # @param repo_name [String] repo_name parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def unlock_a_user_repository(migration_id, repo_name, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/migrations/#{migration_id}/repos/#{repo_name}/lock"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repositories for a user migration
        #
        # @param migration_id [Integer] migration_id parameter
        #
        # @return MigrationsResult, MigrationsErrorResult
        def list_repositories_for_a_user_migration(migration_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/migrations/#{migration_id}/repositories"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            MigrationsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MigrationsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
