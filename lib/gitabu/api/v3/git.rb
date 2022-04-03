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
      # Class to display Git result
      class GitResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class GitErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Git endpoints.
      class Git
        def self.create_a_blob(owner: nil, repo: nil, content: nil, encoding: nil, options: nil)
          new.create_a_blob(owner, repo, content, encoding, options)
        end

        def self.get_a_blob(owner: nil, repo: nil, file_sha: nil, options: nil)
          new.get_a_blob(owner, repo, file_sha, options)
        end

        def self.create_a_commit(owner: nil, repo: nil, message: nil, tree: nil, parents: nil, author: nil, committer: nil, signature: nil, options: nil)
          new.create_a_commit(owner, repo, message, tree, parents, author, committer, signature, options)
        end

        def self.get_a_commit(owner: nil, repo: nil, commit_sha: nil, options: nil)
          new.get_a_commit(owner, repo, commit_sha, options)
        end

        def self.list_matching_references(owner: nil, repo: nil, ref: nil, options: nil)
          new.list_matching_references(owner, repo, ref, options)
        end

        def self.get_a_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.get_a_reference(owner, repo, ref, options)
        end

        def self.create_a_reference(owner: nil, repo: nil, ref: nil, sha: nil, key: nil, options: nil)
          new.create_a_reference(owner, repo, ref, sha, key, options)
        end

        def self.update_a_reference(owner: nil, repo: nil, ref: nil, sha: nil, force: nil, options: nil)
          new.update_a_reference(owner, repo, ref, sha, force, options)
        end

        def self.delete_a_reference(owner: nil, repo: nil, ref: nil, options: nil)
          new.delete_a_reference(owner, repo, ref, options)
        end

        def self.create_a_tag_object(owner: nil, repo: nil, tag: nil, message: nil, object: nil, type: nil, tagger: nil, options: nil)
          new.create_a_tag_object(owner, repo, tag, message, object, type, tagger, options)
        end

        def self.get_a_tag(owner: nil, repo: nil, tag_sha: nil, options: nil)
          new.get_a_tag(owner, repo, tag_sha, options)
        end

        def self.create_a_tree(owner: nil, repo: nil, tree: nil, base_tree: nil, options: nil)
          new.create_a_tree(owner, repo, tree, base_tree, options)
        end

        def self.get_a_tree(owner: nil, repo: nil, tree_sha: nil, options: nil)
          new.get_a_tree(owner, repo, tree_sha, options)
        end

        private

        # create a blob
        #
        # @param owner [String]
        # @param repo [String]
        # @param content [String] Required. The new blob's content.
        # @param encoding [String] The encoding used for content. Currently, "utf-8" and "base64" are supported.Default: utf-8
        #
        # @return GitResult, GitErrorResult
        def create_a_blob(owner, repo, content, encoding, _options)
          auth    = nil
          body    = { content: content, encoding: encoding }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/blobs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a blob
        #
        # @param owner [String]
        # @param repo [String]
        # @param file_sha [String]
        #
        # @return GitResult, GitErrorResult
        def get_a_blob(owner, repo, file_sha, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/blobs/#{file_sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a commit
        #
        # @param owner [String]
        # @param repo [String]
        # @param message [String] Required. The commit message
        # @param tree [String] Required. The SHA of the tree object this commit points to
        # @param parents [Array of strings] The SHAs of the commits that were the parents of this commit. If omitted or empty, the commit will be written as a root commit. For a single parent, an array of one SHA should be provided; for a merge commit, an array of more than one should be provided.
        # @param author [Object] Information about the author of the commit. By default, the author will be the authenticated user and the current date. See the author and committer object below for details.
        # @param committer [Object] Information about the person who is making the commit. By default, committer will use the information set in author. See the author and committer object below for details.
        # @param signature [String] The PGP signature of the commit. GitHub adds the signature to the gpgsig header of the created commit. For a commit signature to be verifiable by Git or GitHub, it must be an ASCII-armored detached PGP signature over the string commit as it would be written to the object database. To pass a signature parameter, you need to first manually create a valid PGP signature, which can be complicated. You may find it easier to use the command line to create signed commits.
        #
        # @return GitResult, GitErrorResult
        def create_a_commit(owner, repo, message, tree, parents, author, committer, signature, _options)
          auth    = nil
          body    = { message: message, tree: tree, parents: parents, author: author, committer: committer, signature: signature }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/commits"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a commit
        #
        # @param owner [String]
        # @param repo [String]
        # @param commit_sha [String] commit_sha parameter
        #
        # @return GitResult, GitErrorResult
        def get_a_commit(owner, repo, commit_sha, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/commits/#{commit_sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list matching references
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return GitResult, GitErrorResult
        def list_matching_references(owner, repo, ref, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/matching-refs/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return GitResult, GitErrorResult
        def get_a_reference(owner, repo, ref, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/ref/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] Required. The name of the fully qualified reference (ie: refs/heads/master). If it doesn't start with 'refs' and have at least two slashes, it will be rejected.
        # @param sha [String] Required. The SHA1 value for this reference.
        # @param key [String]
        #
        # @return GitResult, GitErrorResult
        def create_a_reference(owner, repo, ref, sha, key, _options)
          auth    = nil
          body    = { ref: ref, sha: sha, key: key }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/refs"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        # @param sha [String] Required. The SHA1 value to set this reference to
        # @param force [Boolean] Indicates whether to force the update or to make sure the update is a fast-forward update. Leaving this out or setting it to false will make sure you're not overwriting work.
        #
        # @return GitResult, GitErrorResult
        def update_a_reference(owner, repo, ref, sha, force, _options)
          auth    = nil
          body    = { sha: sha, force: force }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/refs/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a reference
        #
        # @param owner [String]
        # @param repo [String]
        # @param ref [String] ref parameter
        #
        # @return GitResult, GitErrorResult
        def delete_a_reference(owner, repo, ref, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/refs/#{ref}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a tag object
        #
        # @param owner [String]
        # @param repo [String]
        # @param tag [String] Required. The tag's name. This is typically a version (e.g., "v0.0.1").
        # @param message [String] Required. The tag message.
        # @param object [String] Required. The SHA of the git object this is tagging.
        # @param type [String] Required. The type of the object we're tagging. Normally this is a commit but it can also be a tree or a blob.
        # @param tagger [Object] An object with information about the individual creating the tag.
        #
        # @return GitResult, GitErrorResult
        def create_a_tag_object(owner, repo, tag, message, object, type, tagger, _options)
          auth    = nil
          body    = { tag: tag, message: message, object: object, type: type, tagger: tagger }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/tags"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a tag
        #
        # @param owner [String]
        # @param repo [String]
        # @param tag_sha [String]
        #
        # @return GitResult, GitErrorResult
        def get_a_tag(owner, repo, tag_sha, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/tags/#{tag_sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a tree
        #
        # @param owner [String]
        # @param repo [String]
        # @param tree [Array of objects] Required. Objects (of path, mode, type, and sha) specifying a tree structure.
        # @param base_tree [String] The SHA1 of an existing Git tree object which will be used as the base for the new tree. If provided, a new Git tree object will be created from entries in the Git tree object pointed to by base_tree and entries defined in the tree parameter. Entries defined in the tree parameter will overwrite items from base_tree with the same path. If you're creating new changes on a branch, then normally you'd set base_tree to the SHA1 of the Git tree object of the current latest commit on the branch you're working on.
        #   If not provided, GitHub will create a new Git tree object from only the entries defined in the tree parameter. If you create a new commit pointing to such a tree, then all files which were a part of the parent commit's tree and were not defined in the tree parameter will be listed as deleted by the new commit.
        #
        # @return GitResult, GitErrorResult
        def create_a_tree(owner, repo, tree, base_tree, _options)
          auth    = nil
          body    = { tree: tree, base_tree: base_tree }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/trees"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a tree
        #
        # @param owner [String]
        # @param repo [String]
        # @param tree_sha [String]
        #
        # @return GitResult, GitErrorResult
        def get_a_tree(owner, repo, tree_sha, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { recursive: options[:recursive] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/git/trees/#{tree_sha}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            GitResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            GitErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
