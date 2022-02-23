module Mutations
  class DeleteAuthor < GraphQL::Schema::Mutation
    null true
    type Boolean
    argument :id, ID, required: true

    def resolve(id:)
      Author.where(id: id).destroy_all
      true
    end
  end
end
