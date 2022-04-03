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
      # Class to display Webhooks result
      class WebhooksResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class WebhooksErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Webhooks endpoints.
      class Webhooks
        def self.get_a_webhook_configuration_for_a_repository(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.get_a_webhook_configuration_for_a_repository(owner, repo, hook_id, options)
        end

        def self.update_a_webhook_configuration_for_a_repository(owner: nil, repo: nil, hook_id: nil, url: nil, content_type: nil, secret: nil, insecure_ssl: nil, options: nil)
          new.update_a_webhook_configuration_for_a_repository(owner, repo, hook_id, url, content_type, secret, insecure_ssl, options)
        end

        def self.list_deliveries_for_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.list_deliveries_for_a_repository_webhook(owner, repo, hook_id, options)
        end

        def self.get_a_delivery_for_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, delivery_id: nil, options: nil)
          new.get_a_delivery_for_a_repository_webhook(owner, repo, hook_id, delivery_id, options)
        end

        def self.redeliver_a_delivery_for_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, delivery_id: nil, options: nil)
          new.redeliver_a_delivery_for_a_repository_webhook(owner, repo, hook_id, delivery_id, options)
        end

        def self.list_repository_webhooks(owner: nil, repo: nil, options: nil)
          new.list_repository_webhooks(owner, repo, options)
        end

        def self.create_a_repository_webhook(owner: nil, repo: nil, name: nil, config: nil, events: nil, active: nil, options: nil)
          new.create_a_repository_webhook(owner, repo, name, config, events, active, options)
        end

        def self.get_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.get_a_repository_webhook(owner, repo, hook_id, options)
        end

        def self.update_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, config: nil, events: nil, add_events: nil, remove_events: nil, active: nil, options: nil)
          new.update_a_repository_webhook(owner, repo, hook_id, config, events, add_events, remove_events, active, options)
        end

        def self.delete_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.delete_a_repository_webhook(owner, repo, hook_id, options)
        end

        def self.ping_a_repository_webhook(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.ping_a_repository_webhook(owner, repo, hook_id, options)
        end

        def self.test_the_push_repository_webhook(owner: nil, repo: nil, hook_id: nil, options: nil)
          new.test_the_push_repository_webhook(owner, repo, hook_id, options)
        end

        private

        # get a webhook configuration for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def get_a_webhook_configuration_for_a_repository(owner, repo, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a webhook configuration for a repository
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        # @param url [String] The URL to which the payloads will be delivered.
        # @param content_type [String] The media type used to serialize the payloads. Supported values include json and form. The default is form.
        # @param secret [String] If provided, the secret will be used as the key to generate the HMAC hex digest value for delivery signature headers.
        # @param insecure_ssl [String or number or ] Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
        #
        # @return WebhooksResult, WebhooksErrorResult
        def update_a_webhook_configuration_for_a_repository(owner, repo, hook_id, url, content_type, secret, insecure_ssl, _options)
          auth    = nil
          body    = { url: url, content_type: content_type, secret: secret, insecure_ssl: insecure_ssl }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/config"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list deliveries for a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def list_deliveries_for_a_repository_webhook(owner, repo, hook_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], cursor: options[:cursor] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/deliveries"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a delivery for a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        # @param delivery_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def get_a_delivery_for_a_repository_webhook(owner, repo, hook_id, delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/deliveries/#{delivery_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # redeliver a delivery for a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        # @param delivery_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def redeliver_a_delivery_for_a_repository_webhook(owner, repo, hook_id, delivery_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/deliveries/#{delivery_id}/attempts"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository webhooks
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def list_repository_webhooks(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String] Use web to create a webhook. Default: web. This parameter only accepts the value web.
        # @param config [Object] Key/value pairs to provide settings for this webhook. These are defined below.
        # @param events [Array of strings] Determines what events the hook is triggered for.Default: push
        # @param active [Boolean] Determines if notifications are sent when the webhook is triggered. Set to true to send notifications.Default:
        #
        # @return WebhooksResult, WebhooksErrorResult
        def create_a_repository_webhook(owner, repo, name, config, events, active, _options)
          auth    = nil
          body    = { name: name, config: config, events: events, active: active }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def get_a_repository_webhook(owner, repo, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        # @param config [Object] Key/value pairs to provide settings for this webhook. These are defined below.
        # @param events [Array of strings] Determines what events the hook is triggered for. This replaces the entire array of events.Default: push
        # @param add_events [Array of strings] Determines a list of events to be added to the list of events that the Hook triggers for.
        # @param remove_events [Array of strings] Determines a list of events to be removed from the list of events that the Hook triggers for.
        # @param active [Boolean] Determines if notifications are sent when the webhook is triggered. Set to true to send notifications.Default:
        #
        # @return WebhooksResult, WebhooksErrorResult
        def update_a_repository_webhook(owner, repo, hook_id, config, events, add_events, remove_events, active, _options)
          auth    = nil
          body    = { config: config, events: events, add_events: add_events, remove_events: remove_events, active: active }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def delete_a_repository_webhook(owner, repo, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # ping a repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def ping_a_repository_webhook(owner, repo, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/pings"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # test the push repository webhook
        #
        # @param owner [String]
        # @param repo [String]
        # @param hook_id [Integer]
        #
        # @return WebhooksResult, WebhooksErrorResult
        def test_the_push_repository_webhook(owner, repo, hook_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/hooks/#{hook_id}/tests"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            WebhooksResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            WebhooksErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
