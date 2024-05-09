module Mutations
  class DeleteItem < BaseMutation
    argument :id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(id:)
      item = Item.find_by_id(id)
      return false if item.nil?

      item.destroy
      item.destroyed?
    end
  end
end
