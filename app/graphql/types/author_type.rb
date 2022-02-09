# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    description 'One author'

    field :id, ID, null: false
    field :first_name, String, null: false, camelize: false
    field :last_name, String, null: false, camelize: false
    field :year_of_birth, Int, null: false, camelize: false
    field :is_alive, Boolean, null: false, camelize: false
  end
end
