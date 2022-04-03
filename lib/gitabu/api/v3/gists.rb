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
      # Class to display Gists result
      class GistsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class GistsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Gists endpoints.
      class Gists
        def self.list_gists_for_the_authenticated_user(options: nil)
          new.list_gists_for_the_authenticated_user(options)
        end

        def self.create_a_gist(description: nil, files: nil, public: nil, options: nil)
          new.create_a_gist(description, files, public, options)
        end

        def self.list_public_gists(options: nil)
          new.list_public_gists(options)
        end

        def self.list_starred_gists(options: nil)
          new.list_starred_gists(options)
        end

        def self.get_a_gist(gist_id: nil, options: nil)
          new.get_a_gist(gist_id, options)
        end

        def self.update_a_gist(gist_id: nil, description: nil, files: nil, options: nil)
          new.update_a_gist(gist_id, description, files, options)
        end

        def self.delete_a_gist(gist_id: nil, options: nil)
          new.delete_a_gist(gist_id, options)
        end

        def self.list_gist_commits(gist_id: nil, options: nil)
          new.list_gist_commits(gist_id, options)
        end

        def self.list_gist_forks(gist_id: nil, options: nil)
          new.list_gist_forks(gist_id, options)
        end

        def self.fork_a_gist(gist_id: nil, options: nil)
          new.fork_a_gist(gist_id, options)
        end

        def self.check_if_a_gist_is_starred(gist_id: nil, options: nil)
          new.check_if_a_gist_is_starred(gist_id, options)
        end

        def self.star_a_gist(gist_id: nil, options: nil)
          new.star_a_gist(gist_id, options)
        end

        def self.unstar_a_gist(gist_id: nil, options: nil)
          new.unstar_a_gist(gist_id, options)
        end

        def self.get_a_gist_revision(gist_id: nil, sha: nil, options: nil)
          new.get_a_gist_revision(gist_id, sha, options)
        end

        def self.list_gists_for_a_user(username: nil, options: nil)
          new.list_gists_for_a_user(username, options)
        end

        def self.list_gist_comments(gist_id: nil, options: nil)
          new.list_gist_comments(gist_id, options)
        end

        def self.create_a_gist_comment(gist_id: nil, body: nil, options: nil)
          new.create_a_gist_comment(gist_id, body, options)
        end

        def self.get_a_gist_comment(gist_id: nil, comment_id: nil, options: nil)
          new.get_a_gist_comment(gist_id, comment_id, options)
        end

        def self.update_a_gist_comment(gist_id: nil, comment_id: nil, body: nil, options: nil)
          new.update_a_gist_comment(gist_id, comment_id, body, options)
        end

        def self.delete_a_gist_comment(gist_id: nil, comment_id: nil, options: nil)
          new.delete_a_gist_comment(gist_id, comment_id, options)
        end

        private

        # list gists for the authenticated user
        #
        # @params options [Hash]
        #
        # @return GistsResult, GistsErrorResult
        def list_gists_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a gist
        #
        # @param description [String] Description of the gist
        # @param files [Object] Required. Names and content for the files that make up the gist
        # @param public [Boolean or string or ] Flag indicating whether the gist is public
        #
        # @return GistsResult, GistsErrorResult
        def create_a_gist(description, files, public, _options)
          auth    = nil
          body    = { description: description, files: files, public: public }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public gists
        #
        # @params options [Hash]
        #
        # @return GistsResult, GistsErrorResult
        def list_public_gists(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists/public"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list starred gists
        #
        # @params options [Hash]
        #
        # @return GistsResult, GistsErrorResult
        def list_starred_gists(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists/starred"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a gist
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def get_a_gist(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a gist
        #
        # @param gist_id [String] gist_id parameter
        # @param description [String] Description of the gist
        # @param files [Object] Names of files to be updated
        #
        # @return GistsResult, GistsErrorResult
        def update_a_gist(gist_id, description, files, _options)
          auth    = nil
          body    = { description: description, files: files }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a gist
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def delete_a_gist(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gist commits
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def list_gist_commits(gist_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/commits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gist forks
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def list_gist_forks(gist_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/forks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # fork a gist
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def fork_a_gist(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/forks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a gist is starred
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def check_if_a_gist_is_starred(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/star"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # star a gist
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def star_a_gist(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/star"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unstar a gist
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def unstar_a_gist(gist_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/star"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a gist revision
        #
        # @param gist_id [String] gist_id parameter
        # @param sha [String]
        #
        # @return GistsResult, GistsErrorResult
        def get_a_gist_revision(gist_id, sha, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/#{sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gists for a user
        #
        # @param username [String]
        #
        # @return GistsResult, GistsErrorResult
        def list_gists_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/gists"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gist comments
        #
        # @param gist_id [String] gist_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def list_gist_comments(gist_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a gist comment
        #
        # @param gist_id [String] gist_id parameter
        # @param body [String] Required. The comment text.
        #
        # @return GistsResult, GistsErrorResult
        def create_a_gist_comment(gist_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/comments"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a gist comment
        #
        # @param gist_id [String] gist_id parameter
        # @param comment_id [Integer] comment_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def get_a_gist_comment(gist_id, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a gist comment
        #
        # @param gist_id [String] gist_id parameter
        # @param comment_id [Integer] comment_id parameter
        # @param body [String] Required. The comment text.
        #
        # @return GistsResult, GistsErrorResult
        def update_a_gist_comment(gist_id, comment_id, body, _options)
          auth    = nil
          body    = { body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a gist comment
        #
        # @param gist_id [String] gist_id parameter
        # @param comment_id [Integer] comment_id parameter
        #
        # @return GistsResult, GistsErrorResult
        def delete_a_gist_comment(gist_id, comment_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/gists/#{gist_id}/comments/#{comment_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            GistsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GistsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
