module Mutations
  class CreateItem < BaseMutation
    argument :item_type, String, required: true
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :description, String, required: true
    argument :price, Float, required: true

    type Types::ItemType

    def resolve(item_type:, identifier:, label:, description:, price:)
      Item.create!(
        item_type:,
        identifier:,
        label:,
        description:,
        price:
      )
    end
  end
end
