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
      # Class to display Projects result
      class ProjectsResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Class to display error result
      class ProjectsErrorResult
        attr_accessor :result, :message

        def initialize(result:, message:)
          @result = result
          @message = message
        end
      end

      # Projects endpoints.
      class Projects
        def self.list_organization_projects(org: nil, options: nil)
          new.list_organization_projects(org, options)
        end

        def self.create_an_organization_project(org: nil, name: nil, body: nil, options: nil)
          new.create_an_organization_project(org, name, body, options)
        end

        def self.get_a_project(project_id: nil, options: nil)
          new.get_a_project(project_id, options)
        end

        def self.update_a_project(project_id: nil, name: nil, body: nil, state: nil, organization_permission: nil, private: nil, options: nil)
          new.update_a_project(project_id, name, body, state, organization_permission, private, options)
        end

        def self.delete_a_project(project_id: nil, options: nil)
          new.delete_a_project(project_id, options)
        end

        def self.list_repository_projects(owner: nil, repo: nil, options: nil)
          new.list_repository_projects(owner, repo, options)
        end

        def self.create_a_repository_project(owner: nil, repo: nil, name: nil, body: nil, options: nil)
          new.create_a_repository_project(owner, repo, name, body, options)
        end

        def self.create_a_user_project(name: nil, body: nil, options: nil)
          new.create_a_user_project(name, body, options)
        end

        def self.list_user_projects(username: nil, options: nil)
          new.list_user_projects(username, options)
        end

        def self.get_a_project_card(card_id: nil, options: nil)
          new.get_a_project_card(card_id, options)
        end

        def self.update_an_existing_project_card(card_id: nil, note: nil, archived: nil, options: nil)
          new.update_an_existing_project_card(card_id, note, archived, options)
        end

        def self.delete_a_project_card(card_id: nil, options: nil)
          new.delete_a_project_card(card_id, options)
        end

        def self.move_a_project_card(card_id: nil, position: nil, column_id: nil, options: nil)
          new.move_a_project_card(card_id, position, column_id, options)
        end

        def self.list_project_cards(column_id: nil, options: nil)
          new.list_project_cards(column_id, options)
        end

        def self.create_a_project_card(column_id: nil, note: nil, content_id: nil, content_type: nil, options: nil)
          new.create_a_project_card(column_id, note, content_id, content_type, options)
        end

        def self.list_project_collaborators(project_id: nil, options: nil)
          new.list_project_collaborators(project_id, options)
        end

        def self.add_project_collaborator(project_id: nil, username: nil, permission: nil, options: nil)
          new.add_project_collaborator(project_id, username, permission, options)
        end

        def self.remove_user_as_a_collaborator(project_id: nil, username: nil, options: nil)
          new.remove_user_as_a_collaborator(project_id, username, options)
        end

        def self.get_project_permission_for_a_user(project_id: nil, username: nil, options: nil)
          new.get_project_permission_for_a_user(project_id, username, options)
        end

        def self.get_a_project_column(column_id: nil, options: nil)
          new.get_a_project_column(column_id, options)
        end

        def self.update_an_existing_project_column(column_id: nil, name: nil, options: nil)
          new.update_an_existing_project_column(column_id, name, options)
        end

        def self.delete_a_project_column(column_id: nil, options: nil)
          new.delete_a_project_column(column_id, options)
        end

        def self.move_a_project_column(column_id: nil, position: nil, options: nil)
          new.move_a_project_column(column_id, position, options)
        end

        def self.list_project_columns(project_id: nil, options: nil)
          new.list_project_columns(project_id, options)
        end

        def self.create_a_project_column(project_id: nil, name: nil, options: nil)
          new.create_a_project_column(project_id, name, options)
        end

        private

        # list organization projects
        #
        # @param org [String]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_organization_projects(org, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create an organization project
        #
        # @param org [String]
        # @param name [String] Required. The name of the project.
        # @param body [String] The description of the project.
        #
        # @return ProjectsResult, ProjectsErrorResult
        def create_an_organization_project(org, name, body, _options)
          auth    = nil
          body    = { name: name, body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/orgs/#{org}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a project
        #
        # @param project_id [Integer]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def get_a_project(project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update a project
        #
        # @param project_id [Integer]
        # @param name [String] Name of the project
        # @param body [String or null] Body of the project
        # @param state [String] State of the project; either 'open' or 'closed'
        # @param organization_permission [String] The baseline permission that all organization members have on this project
        # @param private [Boolean] Whether or not this project can be seen by everyone.
        #
        # @return ProjectsResult, ProjectsErrorResult
        def update_a_project(project_id, name, body, state, organization_permission, private, _options)
          auth    = nil
          body    = { name: name, body: body, state: state, organization_permission: organization_permission, private: private }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a project
        #
        # @param project_id [Integer]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def delete_a_project(project_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list repository projects
        #
        # @param owner [String]
        # @param repo [String]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_repository_projects(owner, repo, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a repository project
        #
        # @param owner [String]
        # @param repo [String]
        # @param name [String] Required. The name of the project.
        # @param body [String] The description of the project.
        #
        # @return ProjectsResult, ProjectsErrorResult
        def create_a_repository_project(owner, repo, name, body, _options)
          auth    = nil
          body    = { name: name, body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/repos/#{owner}/#{repo}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a user project
        #
        # @param name [String] Required. Name of the project
        # @param body [String or null] Body of the project
        #
        # @return ProjectsResult, ProjectsErrorResult
        def create_a_user_project(name, body, _options)
          auth    = nil
          body    = { name: name, body: body }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/user/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list user projects
        #
        # @param username [String]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_user_projects(username, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { state: options[:state], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/users/#{username}/projects"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a project card
        #
        # @param card_id [Integer] card_id parameter
        #
        # @return ProjectsResult, ProjectsErrorResult
        def get_a_project_card(card_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/cards/#{card_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an existing project card
        #
        # @param card_id [Integer] card_id parameter
        # @param note [String or null] The project card's note
        # @param archived [Boolean] Whether or not the card is archived
        #
        # @return ProjectsResult, ProjectsErrorResult
        def update_an_existing_project_card(card_id, note, archived, _options)
          auth    = nil
          body    = { note: note, archived: archived }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/cards/#{card_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a project card
        #
        # @param card_id [Integer] card_id parameter
        #
        # @return ProjectsResult, ProjectsErrorResult
        def delete_a_project_card(card_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/cards/#{card_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # move a project card
        #
        # @param card_id [Integer] card_id parameter
        # @param position [String] Required. The position of the card in a column. Can be one of: top, bottom, or after:<card_id> to place after the specified card.
        # @param column_id [Integer] The unique identifier of the column the card should be moved to
        #
        # @return ProjectsResult, ProjectsErrorResult
        def move_a_project_card(card_id, position, column_id, _options)
          auth    = nil
          body    = { position: position, column_id: column_id }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/cards/#{card_id}/moves"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list project cards
        #
        # @param column_id [Integer] column_id parameter
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_project_cards(column_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { archived_state: options[:archived_state], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}/cards"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a project card
        #
        # @param column_id [Integer] column_id parameter
        # @param note [String or null] Required. The project card's note
        # @param content_id [Integer] Required. The unique identifier of the content associated with the card
        # @param content_type [String] Required. The piece of content associated with the card
        #
        # @return ProjectsResult, ProjectsErrorResult
        def create_a_project_card(column_id, note, content_id, content_type, _options)
          auth    = nil
          body    = { note: note, content_id: content_id, content_type: content_type }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}/cards"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list project collaborators
        #
        # @param project_id [Integer]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_project_collaborators(project_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { affiliation: options[:affiliation], per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/collaborators"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # add project collaborator
        #
        # @param project_id [Integer]
        # @param username [String]
        # @param permission [String] The permission to grant the collaborator.Default: write
        #
        # @return ProjectsResult, ProjectsErrorResult
        def add_project_collaborator(project_id, username, permission, _options)
          auth    = nil
          body    = { permission: permission }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :put, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # remove user as a collaborator
        #
        # @param project_id [Integer]
        # @param username [String]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def remove_user_as_a_collaborator(project_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/collaborators/#{username}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get project permission for a user
        #
        # @param project_id [Integer]
        # @param username [String]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def get_project_permission_for_a_user(project_id, username, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/collaborators/#{username}/permission"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # get a project column
        #
        # @param column_id [Integer] column_id parameter
        #
        # @return ProjectsResult, ProjectsErrorResult
        def get_a_project_column(column_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # update an existing project column
        #
        # @param column_id [Integer] column_id parameter
        # @param name [String] Required. Name of the project column
        #
        # @return ProjectsResult, ProjectsErrorResult
        def update_an_existing_project_column(column_id, name, _options)
          auth    = nil
          body    = { name: name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :patch, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # delete a project column
        #
        # @param column_id [Integer] column_id parameter
        #
        # @return ProjectsResult, ProjectsErrorResult
        def delete_a_project_column(column_id, _options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :delete, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # move a project column
        #
        # @param column_id [Integer] column_id parameter
        # @param position [String] Required. The position of the column in a project. Can be one of: first, last, or after:<column_id> to place after the specified column.
        #
        # @return ProjectsResult, ProjectsErrorResult
        def move_a_project_column(column_id, position, _options)
          auth    = nil
          body    = { position: position }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/columns/#{column_id}/moves"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # list project columns
        #
        # @param project_id [Integer]
        #
        # @return ProjectsResult, ProjectsErrorResult
        def list_project_columns(project_id, options)
          auth    = nil
          body    = nil
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = { per_page: options[:per_page], page: options[:page] }
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/columns"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :get, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end

        # create a project column
        #
        # @param project_id [Integer]
        # @param name [String] Required. Name of the project column
        #
        # @return ProjectsResult, ProjectsErrorResult
        def create_a_project_column(project_id, name, _options)
          auth    = nil
          body    = { name: name }
          headers = { accept: 'application/vnd.github.v3+json' }
          params  = nil
          uri     = "#{Gitabu::BASE_URL}/projects/#{project_id}/columns"

          http_call = Gitabu::HttpClient.call(auth: auth, body: body, headers: headers, method: :post, params: params, uri: uri)

          if http_call.successful?
            ProjectsResult.new(result: http_call, message: "Successful call to endpoint. #{http_call.result.message}")
          else
            ProjectsErrorResult.new(result: http_call, message: "Failure while calling endpoint. #{http_call.result.message}")
          end
        end
      end
    end
  end
end
