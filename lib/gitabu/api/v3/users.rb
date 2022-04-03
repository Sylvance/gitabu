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
      # Class to display Users result
      class UsersResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class UsersErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Users endpoints.
      class Users
        def self.get_the_authenticated_user(options: nil)
          new.get_the_authenticated_user(options)
        end

        def self.update_the_authenticated_user(name: nil, email: nil, blog: nil, twitter_username: nil, company: nil, location: nil, hireable: nil, bio: nil, options: nil)
          new.update_the_authenticated_user(name, email, blog, twitter_username, company, location, hireable, bio, options)
        end

        def self.list_users(options: nil)
          new.list_users(options)
        end

        def self.get_a_user(username: nil, options: nil)
          new.get_a_user(username, options)
        end

        def self.get_contextual_information_for_a_user(username: nil, options: nil)
          new.get_contextual_information_for_a_user(username, options)
        end

        def self.list_users_blocked_by_the_authenticated_user(options: nil)
          new.list_users_blocked_by_the_authenticated_user(options)
        end

        def self.check_if_a_user_is_blocked_by_the_authenticated_user(username: nil, options: nil)
          new.check_if_a_user_is_blocked_by_the_authenticated_user(username, options)
        end

        def self.block_a_user(username: nil, options: nil)
          new.block_a_user(username, options)
        end

        def self.unblock_a_user(username: nil, options: nil)
          new.unblock_a_user(username, options)
        end

        def self.set_primary_email_visibility_for_the_authenticated_user(visibility: nil, options: nil)
          new.set_primary_email_visibility_for_the_authenticated_user(visibility, options)
        end

        def self.list_email_addresses_for_the_authenticated_user(options: nil)
          new.list_email_addresses_for_the_authenticated_user(options)
        end

        def self.add_an_email_address_for_the_authenticated_user(emails: nil, options: nil)
          new.add_an_email_address_for_the_authenticated_user(emails, options)
        end

        def self.delete_an_email_address_for_the_authenticated_user(emails: nil, options: nil)
          new.delete_an_email_address_for_the_authenticated_user(emails, options)
        end

        def self.list_public_email_addresses_for_the_authenticated_user(options: nil)
          new.list_public_email_addresses_for_the_authenticated_user(options)
        end

        def self.list_followers_of_the_authenticated_user(options: nil)
          new.list_followers_of_the_authenticated_user(options)
        end

        def self.list_the_people_the_authenticated_user_follows(options: nil)
          new.list_the_people_the_authenticated_user_follows(options)
        end

        def self.check_if_a_person_is_followed_by_the_authenticated_user(username: nil, options: nil)
          new.check_if_a_person_is_followed_by_the_authenticated_user(username, options)
        end

        def self.follow_a_user(username: nil, options: nil)
          new.follow_a_user(username, options)
        end

        def self.unfollow_a_user(username: nil, options: nil)
          new.unfollow_a_user(username, options)
        end

        def self.list_followers_of_a_user(username: nil, options: nil)
          new.list_followers_of_a_user(username, options)
        end

        def self.list_the_people_a_user_follows(username: nil, options: nil)
          new.list_the_people_a_user_follows(username, options)
        end

        def self.check_if_a_user_follows_another_user(username: nil, target_user: nil, options: nil)
          new.check_if_a_user_follows_another_user(username, target_user, options)
        end

        def self.list_gpg_keys_for_the_authenticated_user(options: nil)
          new.list_gpg_keys_for_the_authenticated_user(options)
        end

        def self.create_a_gpg_key_for_the_authenticated_user(armored_public_key: nil, options: nil)
          new.create_a_gpg_key_for_the_authenticated_user(armored_public_key, options)
        end

        def self.get_a_gpg_key_for_the_authenticated_user(gpg_key_id: nil, options: nil)
          new.get_a_gpg_key_for_the_authenticated_user(gpg_key_id, options)
        end

        def self.delete_a_gpg_key_for_the_authenticated_user(gpg_key_id: nil, options: nil)
          new.delete_a_gpg_key_for_the_authenticated_user(gpg_key_id, options)
        end

        def self.list_gpg_keys_for_a_user(username: nil, options: nil)
          new.list_gpg_keys_for_a_user(username, options)
        end

        def self.list_public_ssh_keys_for_the_authenticated_user(options: nil)
          new.list_public_ssh_keys_for_the_authenticated_user(options)
        end

        def self.create_a_public_ssh_key_for_the_authenticated_user(title: nil, key: nil, options: nil)
          new.create_a_public_ssh_key_for_the_authenticated_user(title, key, options)
        end

        def self.get_a_public_ssh_key_for_the_authenticated_user(key_id: nil, options: nil)
          new.get_a_public_ssh_key_for_the_authenticated_user(key_id, options)
        end

        def self.delete_a_public_ssh_key_for_the_authenticated_user(key_id: nil, options: nil)
          new.delete_a_public_ssh_key_for_the_authenticated_user(key_id, options)
        end

        def self.list_public_keys_for_a_user(username: nil, options: nil)
          new.list_public_keys_for_a_user(username, options)
        end

        private

        # get the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def get_the_authenticated_user(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update the authenticated user
        #
        # @param name [String] The new name of the user.
        # @param email [String] The publicly visible email address of the user.
        # @param blog [String] The new blog URL of the user.
        # @param twitter_username [String or null] The new Twitter username of the user.
        # @param company [String] The new company of the user.
        # @param location [String] The new location of the user.
        # @param hireable [Boolean] The new hiring availability of the user.
        # @param bio [String] The new short biography of the user.
        #
        # @return UsersResult, UsersErrorResult
        def update_the_authenticated_user(name, email, blog, twitter_username, company, location, hireable, bio, _options)
          auth    = nil
          body    = { name: name, email: email, blog: blog, twitter_username: twitter_username, company: company, location: location, hireable: hireable, bio: bio }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list users
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_users(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { since: options[:since], per_page: options[:per_page] }
          uri     = "#{Gitabu::BASE_URL}/users"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def get_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get contextual information for a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def get_contextual_information_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { subject_type: options[:subject_type], subject_id: options[:subject_id] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/hovercard"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list users blocked by the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_users_blocked_by_the_authenticated_user(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/blocks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a user is blocked by the authenticated user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def check_if_a_user_is_blocked_by_the_authenticated_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # block a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def block_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unblock a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def unblock_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/blocks/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # set primary email visibility for the authenticated user
        #
        # @param visibility [String] Required. Denotes whether an email is publicly visible.
        #
        # @return UsersResult, UsersErrorResult
        def set_primary_email_visibility_for_the_authenticated_user(visibility, _options)
          auth    = nil
          body    = { visibility: visibility }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/email/visibility"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list email addresses for the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_email_addresses_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/emails"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add an email address for the authenticated user
        #
        # @param emails [Array of strings] Required. Adds one or more email addresses to your GitHub account. Must contain at least one email address. Note: Alternatively, you can pass a single email address or an array of emails addresses directly, but we recommend that you pass an object using the emails key.
        #
        # @return UsersResult, UsersErrorResult
        def add_an_email_address_for_the_authenticated_user(emails, _options)
          auth    = nil
          body    = { emails: emails }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/emails"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete an email address for the authenticated user
        #
        # @param emails [Array of strings] Required. Email addresses associated with the GitHub user account.
        #
        # @return UsersResult, UsersErrorResult
        def delete_an_email_address_for_the_authenticated_user(emails, _options)
          auth    = nil
          body    = { emails: emails }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/emails"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public email addresses for the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_public_email_addresses_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/public_emails"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list followers of the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_followers_of_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/followers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list the people the authenticated user follows
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_the_people_the_authenticated_user_follows(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/following"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a person is followed by the authenticated user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def check_if_a_person_is_followed_by_the_authenticated_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/following/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # follow a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def follow_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/following/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # unfollow a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def unfollow_a_user(username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/following/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list followers of a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def list_followers_of_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/followers"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list the people a user follows
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def list_the_people_a_user_follows(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/following"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # check if a user follows another user
        #
        # @param username [String]
        # @param target_user [String]
        #
        # @return UsersResult, UsersErrorResult
        def check_if_a_user_follows_another_user(username, target_user, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/following/#{target_user}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gpg keys for the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_gpg_keys_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/gpg_keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a gpg key for the authenticated user
        #
        # @param armored_public_key [String] Required. A GPG key in ASCII-armored format.
        #
        # @return UsersResult, UsersErrorResult
        def create_a_gpg_key_for_the_authenticated_user(armored_public_key, _options)
          auth    = nil
          body    = { armored_public_key: armored_public_key }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/gpg_keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a gpg key for the authenticated user
        #
        # @param gpg_key_id [Integer] gpg_key_id parameter
        #
        # @return UsersResult, UsersErrorResult
        def get_a_gpg_key_for_the_authenticated_user(gpg_key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/gpg_keys/#{gpg_key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a gpg key for the authenticated user
        #
        # @param gpg_key_id [Integer] gpg_key_id parameter
        #
        # @return UsersResult, UsersErrorResult
        def delete_a_gpg_key_for_the_authenticated_user(gpg_key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/gpg_keys/#{gpg_key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list gpg keys for a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def list_gpg_keys_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/gpg_keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public ssh keys for the authenticated user
        #
        # @params options [Hash]
        #
        # @return UsersResult, UsersErrorResult
        def list_public_ssh_keys_for_the_authenticated_user(options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/user/keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a public ssh key for the authenticated user
        #
        # @param title [String] A descriptive name for the new key.
        # @param key [String] Required. The public SSH key to add to your GitHub account.
        #
        # @return UsersResult, UsersErrorResult
        def create_a_public_ssh_key_for_the_authenticated_user(title, key, _options)
          auth    = nil
          body    = { title: title, key: key }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a public ssh key for the authenticated user
        #
        # @param key_id [Integer] key_id parameter
        #
        # @return UsersResult, UsersErrorResult
        def get_a_public_ssh_key_for_the_authenticated_user(key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/keys/#{key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a public ssh key for the authenticated user
        #
        # @param key_id [Integer] key_id parameter
        #
        # @return UsersResult, UsersErrorResult
        def delete_a_public_ssh_key_for_the_authenticated_user(key_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/keys/#{key_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list public keys for a user
        #
        # @param username [String]
        #
        # @return UsersResult, UsersErrorResult
        def list_public_keys_for_a_user(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/keys"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            UsersResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            UsersErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
