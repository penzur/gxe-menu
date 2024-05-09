module Resolvers
  class ItemResolver < BaseResolver
    type Types::ItemType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      Item.find(id)
    end
  end
end
