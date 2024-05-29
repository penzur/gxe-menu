module Resolvers
  class ItemsResolver < BaseResolver
    type [Types::ItemType], null: false

    def resolve
      cache_fragment(expires_in: 3.minutes) { Item.all }
    end
  end
end
