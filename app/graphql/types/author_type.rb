# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    description 'One author'

    field :id, ID, null: false
    field :full_name, String, null: false, camelize: false
    field :year_of_birth, Int, null: false, camelize: false
    field :is_alive, Boolean, null: false, camelize: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
    field :coordinates, Types::CoordinatesType, null: false
    field :publication_years, [Int], null: false, camelize: false

    field :errors, [Types::ErrorType], null: true

    def errors
      object.errors.map { |e| { field_name: e.attribute, errors: [e.attribute] } }
    end

    def full_name
      "#{object.first_name} #{object.last_name}"
    end
  end
end
