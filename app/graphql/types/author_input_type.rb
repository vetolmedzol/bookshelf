module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name 'AuthorInputType'
    description 'All the attributes needed to create/update an author'

    argument :id, ID, required: false
    argument :first_name, String, required: false, camelize: false
    argument :last_name, String, required: false, camelize: false
    argument :year_of_birth, Int, required: false, camelize: false
    argument :is_alive, Boolean, required: false, camelize: false
  end
end
