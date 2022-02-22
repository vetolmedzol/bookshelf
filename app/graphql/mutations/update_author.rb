module Mutations
  class UpdateAuthor < GraphQL::Schema::Mutation
    null true
    type Boolean
    argument :input, Types::AuthorInputType, required: true

    def resolve(input:)
      existing = Author.where(id: input[:id]).first
      existing&.update!(input.to_h)
    end
  end
end
