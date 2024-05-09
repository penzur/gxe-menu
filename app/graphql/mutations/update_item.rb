module Mutations
  class UpdateItem < BaseMutation
    argument :id, ID, required: true
    argument :item_type, String, required: false
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :description, String, required: false
    argument :price, Float, required: false

    type Types::ItemType

    def resolve(id:, **args)
      item = Item.find_by_id(id)
      return nil if item.nil?

      item.update(args)
      item
    end
  end
end
