# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description 'A user'

    field :id, ID, null: true
    field :email, String, null: false
    field :is_superadmin, Boolean, null: false
  end
end
