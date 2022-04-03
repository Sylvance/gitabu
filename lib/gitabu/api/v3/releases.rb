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
      # Class to display Releases result
      class ReleasesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ReleasesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Releases endpoints.
      class Releases
        def self.list_releases(owner: nil, repo: nil, options: nil)
          new.list_releases(owner, repo, options)
        end

        def self.create_a_release(owner: nil, repo: nil, tag_name: nil, target_commitish: nil, name: nil, body: nil, draft: nil, prerelease: nil, discussion_category_name: nil, generate_release_notes: nil, options: nil)
          new.create_a_release(owner, repo, tag_name, target_commitish, name, body, draft, prerelease, discussion_category_name, generate_release_notes, options)
        end

        def self.generate_release_notes_content_for_a_release(owner: nil, repo: nil, tag_name: nil, target_commitish: nil, previous_tag_name: nil, configuration_file_path: nil, options: nil)
          new.generate_release_notes_content_for_a_release(owner, repo, tag_name, target_commitish, previous_tag_name, configuration_file_path, options)
        end

        def self.get_the_latest_release(owner: nil, repo: nil, options: nil)
          new.get_the_latest_release(owner, repo, options)
        end

        def self.get_a_release_by_tag_name(owner: nil, repo: nil, tag: nil, options: nil)
          new.get_a_release_by_tag_name(owner, repo, tag, options)
        end

        def self.get_a_release(owner: nil, repo: nil, release_id: nil, options: nil)
          new.get_a_release(owner, repo, release_id, options)
        end

        def self.update_a_release(owner: nil, repo: nil, release_id: nil, tag_name: nil, target_commitish: nil, name: nil, body: nil, draft: nil, prerelease: nil, discussion_category_name: nil, options: nil)
          new.update_a_release(owner, repo, release_id, tag_name, target_commitish, name, body, draft, prerelease, discussion_category_name, options)
        end

        def self.delete_a_release(owner: nil, repo: nil, release_id: nil, options: nil)
          new.delete_a_release(owner, repo, release_id, options)
        end

        def self.get_a_release_asset(owner: nil, repo: nil, asset_id: nil, options: nil)
          new.get_a_release_asset(owner, repo, asset_id, options)
        end

        def self.update_a_release_asset(owner: nil, repo: nil, asset_id: nil, name: nil, label: nil, state: nil, options: nil)
          new.update_a_release_asset(owner, repo, asset_id, name, label, state, options)
        end

        def self.delete_a_release_asset(owner: nil, repo: nil, asset_id: nil, options: nil)
          new.delete_a_release_asset(owner, repo, asset_id, options)
        end

        def self.list_release_assets(owner: nil, repo: nil, release_id: nil, options: nil)
          new.list_release_assets(owner, repo, release_id, options)
        end

        def self.upload_a_release_asset(owner: nil, repo: nil, release_id: nil, options: nil)
          new.upload_a_release_asset(owner, repo, release_id, options)
        end

        private

        # list releases
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReleasesResult, ReleasesErrorResult
        def list_releases(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param tag_name [String] Required. The name of the tag.
        # @param target_commitish [String] Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually master).
        # @param name [String] The name of the release.
        # @param body [String] Text describing the contents of the tag.
        # @param draft [Boolean] true to create a draft (unpublished) release, false to create a published one.
        # @param prerelease [Boolean] true to identify the release as a prerelease. false to identify the release as a full release.
        # @param discussion_category_name [String] If specified, a discussion of the specified category is created and linked to the release. The value must be a category that already exists in the repository. For more information, see "Managing categories for discussions in your repository."
        # @param generate_release_notes [Boolean] Whether to automatically generate the name and body for this release. If name is specified, the specified name will be used; otherwise, a name will be automatically generated. If body is specified, the body will be pre-pended to the automatically generated notes.
        #
        # @return ReleasesResult, ReleasesErrorResult
        def create_a_release(owner, repo, tag_name, target_commitish, name, body, draft, prerelease, discussion_category_name, generate_release_notes, _options)
          auth    = nil
          body    = { tag_name: tag_name, target_commitish: target_commitish, name: name, body: body, draft: draft, prerelease: prerelease, discussion_category_name: discussion_category_name, generate_release_notes: generate_release_notes }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # generate release notes content for a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param tag_name [String] Required. The tag name for the release. This can be an existing tag or a new one.
        # @param target_commitish [String] Specifies the commitish value that will be the target for the release's tag. Required if the supplied tag_name does not reference an existing tag. Ignored if the tag_name already exists.
        # @param previous_tag_name [String] The name of the previous tag to use as the starting point for the release notes. Use to manually specify the range for the set of changes considered as part this release.
        # @param configuration_file_path [String] Specifies a path to a file in the repository containing configuration settings used for generating the release notes. If unspecified, the configuration file located in the repository at '.github/release.yml' or '.github/release.yaml' will be used. If that is not present, the default configuration will be used.
        #
        # @return ReleasesResult, ReleasesErrorResult
        def generate_release_notes_content_for_a_release(owner, repo, tag_name, target_commitish, previous_tag_name, configuration_file_path, _options)
          auth    = nil
          body    = { tag_name: tag_name, target_commitish: target_commitish, previous_tag_name: previous_tag_name, configuration_file_path: configuration_file_path }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/generate-notes"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get the latest release
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ReleasesResult, ReleasesErrorResult
        def get_the_latest_release(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/latest"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a release by tag name
        #
        # @param owner [String]
        # @param repo [String]
        # @param tag [String] tag parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def get_a_release_by_tag_name(owner, repo, tag, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/tags/#{tag}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def get_a_release(owner, repo, release_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        # @param tag_name [String] The name of the tag.
        # @param target_commitish [String] Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually master).
        # @param name [String] The name of the release.
        # @param body [String] Text describing the contents of the tag.
        # @param draft [Boolean] true makes the release a draft, and false publishes the release.
        # @param prerelease [Boolean] true to identify the release as a prerelease, false to identify the release as a full release.
        # @param discussion_category_name [String] If specified, a discussion of the specified category is created and linked to the release. The value must be a category that already exists in the repository. If there is already a discussion linked to the release, this parameter is ignored. For more information, see "Managing categories for discussions in your repository."
        #
        # @return ReleasesResult, ReleasesErrorResult
        def update_a_release(owner, repo, release_id, tag_name, target_commitish, name, body, draft, prerelease, discussion_category_name, _options)
          auth    = nil
          body    = { tag_name: tag_name, target_commitish: target_commitish, name: name, body: body, draft: draft, prerelease: prerelease, discussion_category_name: discussion_category_name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a release
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def delete_a_release(owner, repo, release_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a release asset
        #
        # @param owner [String]
        # @param repo [String]
        # @param asset_id [Integer] asset_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def get_a_release_asset(owner, repo, asset_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/assets/#{asset_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a release asset
        #
        # @param owner [String]
        # @param repo [String]
        # @param asset_id [Integer] asset_id parameter
        # @param name [String] The file name of the asset.
        # @param label [String] An alternate short description of the asset. Used in place of the filename.
        # @param state [String]
        #
        # @return ReleasesResult, ReleasesErrorResult
        def update_a_release_asset(owner, repo, asset_id, name, label, state, _options)
          auth    = nil
          body    = { name: name, label: label, state: state }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/assets/#{asset_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a release asset
        #
        # @param owner [String]
        # @param repo [String]
        # @param asset_id [Integer] asset_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def delete_a_release_asset(owner, repo, asset_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/assets/#{asset_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list release assets
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def list_release_assets(owner, repo, release_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}/assets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # upload a release asset
        #
        # @param owner [String]
        # @param repo [String]
        # @param release_id [Integer] release_id parameter
        #
        # @return ReleasesResult, ReleasesErrorResult
        def upload_a_release_asset(owner, repo, release_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { name: options[:name], label: options[:label] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/releases/#{release_id}/assets"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ReleasesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ReleasesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
