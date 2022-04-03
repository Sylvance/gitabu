# frozen_string_literal: true

require_relative "generator"

# Ruby gem that helps you work with Github API.
module Gitabu
  # Run class to introduce generated classes.
  class Run
    def self.save
      new.save
    end

    def initialize; end

    def save
      hash.each do |api_module|
        link    = api_module[:link]
        name    = api_module[:name]
        version = api_module[:version]

        Gitabu::Generator.generate(link: link, name: name, version: version)
      end
    end

    private

    def hash
      [
        {
          link: 'https://docs.github.com/en/rest/reference/actions',
          name: 'actions',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/activity',
          name: 'activity',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/apps',
          name: 'apps',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/billing',
          name: 'billing',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/branches',
          name: 'branches',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/checks',
          name: 'checks',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/codes-of-conduct',
          name: 'codes_of_conduct',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/code-scanning',
          name: 'code_scanning',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/codespaces',
          name: 'codespaces',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/collaborators',
          name: 'collaborators',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/commits',
          name: 'commits',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/dependabot',
          name: 'dependabot',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/deploy_keys',
          name: 'deploy_keys',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/deployments',
          name: 'deployments',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/emojis',
          name: 'emojis',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/enterprise-admin',
          name: 'enterprise_admin',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/gists',
          name: 'gists',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/git',
          name: 'git',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/gitignore',
          name: 'gitignore',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/interactions',
          name: 'interactions',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/issues',
          name: 'issues',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/licenses',
          name: 'licenses',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/markdown',
          name: 'markdown',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/meta',
          name: 'meta',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/metrics',
          name: 'metrics',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/migrations',
          name: 'migrations',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/orgs',
          name: 'orgs',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/packages',
          name: 'packages',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/pages',
          name: 'pages',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/projects',
          name: 'projects',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/pulls',
          name: 'pulls',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/rate-limit',
          name: 'rate_limit',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/reactions',
          name: 'reactions',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/releases',
          name: 'releases',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/repos',
          name: 'repos',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/scim',
          name: 'scim',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/search',
          name: 'search',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/secret-scanning',
          name: 'secret_scanning',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/teams',
          name: 'teams',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/users',
          name: 'users',
          version: 3
        },
        {
          link: 'https://docs.github.com/en/rest/reference/webhooks',
          name: 'webhooks',
          version: 3
        }
      ]
    end
  end
end
