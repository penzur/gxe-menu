module Resolvers
  class ItemResolver < BaseResolver
    type Types::ItemType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      cache_fragment(expires_in: 3.minutes) { Item.find(id) }
    end
  end
end
