module Mutations
  class DeleteMenu < BaseMutation
    argument :id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(id:)
      menu = Menu.find_by_id(id)
      return false if menu.nil?

      menu.destroy
      menu.destroyed?
    end
  end
end
