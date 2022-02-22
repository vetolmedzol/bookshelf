module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor
    field :delete_author, Boolean, mutation: Mutations::DeleteAuthor
    field :update_author, Boolean, mutation: Mutations::UpdateAuthor
  end
end
