module Types
  class ErrorType < Types::BaseObject
    description 'Activerecord errors'

    field :field_name, String, null: false
    field :errors, [String], null: false
  end
end
