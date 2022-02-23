module Mutations
  class CreateAuthor < GraphQL::Schema::Mutation
    null true
    argument :input, Types::AuthorInputType, required: true

    def resolve(input:)
      Author.create!(input.to_h)
    end
  end
end
