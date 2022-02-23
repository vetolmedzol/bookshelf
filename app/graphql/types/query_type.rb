# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :author, Types::AuthorType, null: true, description: 'Returns one Author instance' do
      argument :id, ID, required: true
    end
    def author(id:)
      Author.find_by(id: id)
    end

    field :authors, [Types::AuthorType], null: false
    def authors
      Author.all
    end

    field :login, String, null: true, description: 'Login a user' do
      argument :email,  String, required: true
      argument :password,  String, required: true
    end

    def login(email:, password:)
      if user = User.where(email: email).first&.authenticate(password)
        user.sessions.create.key
      end
    end

    field :current_user, Types::UserType, null: true, description: 'The currently logged in user'

    def current_user
      context[:current_user]
    end

    field :logout, Boolean, null: false, description: 'Logout a user'

    def  logout
      Session.where(id: context[:session_id]).destroy_all
    end

  end
end
