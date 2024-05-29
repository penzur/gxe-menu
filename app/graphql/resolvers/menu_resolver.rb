module Resolvers
  class MenuResolver < BaseResolver
    type Types::MenuType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      cache_fragment(expires_in: 3.minutes) { Menu.find(id) }
    end
  end
end
