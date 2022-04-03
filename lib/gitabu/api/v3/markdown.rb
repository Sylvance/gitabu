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
      # Class to display Markdown result
      class MarkdownResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class MarkdownErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Markdown endpoints.
      class Markdown
        def self.render_a_markdown_document(text: nil, mode: nil, context: nil, options: nil)
          new.render_a_markdown_document(text, mode, context, options)
        end

        def self.render_a_markdown_document_in_raw_mode(options: nil)
          new.render_a_markdown_document_in_raw_mode(options)
        end

        private

        # render a markdown document
        #
        # @param text [String] Required. The Markdown text to render in HTML.
        # @param mode [String] The rendering mode. Can be either markdown or gfm.Default: markdown
        # @param context [String] The repository context to use when creating references in gfm mode.  For example, setting context to octo-org/octo-repo will change the text #42 into an HTML link to issue 42 in the octo-org/octo-repo repository.
        #
        # @return MarkdownResult, MarkdownErrorResult
        def render_a_markdown_document(text, mode, context, _options)
          auth    = nil
          body    = { text: text, mode: mode, context: context }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/markdown"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            MarkdownResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MarkdownErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # render a markdown document in raw mode
        #
        # @params options [Hash]
        #
        # @return MarkdownResult, MarkdownErrorResult
        def render_a_markdown_document_in_raw_mode(_options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/markdown/raw"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            MarkdownResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            MarkdownErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
