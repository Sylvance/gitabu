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
      # Class to display Pages result
      class PagesResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class PagesErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Pages endpoints.
      class Pages
        def self.get_a_github_pages_site(owner: nil, repo: nil, options: nil)
          new.get_a_github_pages_site(owner, repo, options)
        end

        def self.create_a_github_pages_site(owner: nil, repo: nil, source: nil, options: nil)
          new.create_a_github_pages_site(owner, repo, source, options)
        end

        def self.update_information_about_a_github_pages_site(owner: nil, repo: nil, cname: nil, https_enforced: nil, public: nil, source: nil, options: nil)
          new.update_information_about_a_github_pages_site(owner, repo, cname, https_enforced, public, source, options)
        end

        def self.delete_a_github_pages_site(owner: nil, repo: nil, options: nil)
          new.delete_a_github_pages_site(owner, repo, options)
        end

        def self.list_github_pages_builds(owner: nil, repo: nil, options: nil)
          new.list_github_pages_builds(owner, repo, options)
        end

        def self.request_a_github_pages_build(owner: nil, repo: nil, options: nil)
          new.request_a_github_pages_build(owner, repo, options)
        end

        def self.get_latest_pages_build(owner: nil, repo: nil, options: nil)
          new.get_latest_pages_build(owner, repo, options)
        end

        def self.get_github_pages_build(owner: nil, repo: nil, build_id: nil, options: nil)
          new.get_github_pages_build(owner, repo, build_id, options)
        end

        def self.get_a_dns_health_check_for_github_pages(owner: nil, repo: nil, options: nil)
          new.get_a_dns_health_check_for_github_pages(owner, repo, options)
        end

        private

        # get a github pages site
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def get_a_github_pages_site(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a github pages site
        #
        # @param owner [String]
        # @param repo [String]
        # @param source [Object] Required. The source branch and directory used to publish your Pages site.
        #
        # @return PagesResult, PagesErrorResult
        def create_a_github_pages_site(owner, repo, source, _options)
          auth    = nil
          body    = { source: source }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update information about a github pages site
        #
        # @param owner [String]
        # @param repo [String]
        # @param cname [String or null] Specify a custom domain for the repository. Sending a null value will remove the custom domain. For more about custom domains, see "Using a custom domain with GitHub Pages."
        # @param https_enforced [Boolean] Specify whether HTTPS should be enforced for the repository.
        # @param public [Boolean] Configures access controls for the GitHub Pages site. If public is set to true, the site is accessible to anyone on the internet. If set to false, the site will only be accessible to users who have at least read access to the repository that published the site. This includes anyone in your Enterprise if the repository is set to internal visibility. This feature is only available to repositories in an organization on an Enterprise plan.
        # @param source []
        #
        # @return PagesResult, PagesErrorResult
        def update_information_about_a_github_pages_site(owner, repo, cname, https_enforced, public, source, _options)
          auth    = nil
          body    = { cname: cname, https_enforced: https_enforced, public: public, source: source }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a github pages site
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def delete_a_github_pages_site(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list github pages builds
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def list_github_pages_builds(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages/builds"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # request a github pages build
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def request_a_github_pages_build(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages/builds"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get latest pages build
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def get_latest_pages_build(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages/builds/latest"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get github pages build
        #
        # @param owner [String]
        # @param repo [String]
        # @param build_id [Integer]
        #
        # @return PagesResult, PagesErrorResult
        def get_github_pages_build(owner, repo, build_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages/builds/#{build_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a dns health check for github pages
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return PagesResult, PagesErrorResult
        def get_a_dns_health_check_for_github_pages(owner, repo, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/pages/health"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            PagesResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            PagesErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
