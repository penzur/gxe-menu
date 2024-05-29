module Resolvers
  class MenusResolver < BaseResolver
    type [Types::MenuType], null: false

    def resolve
      cache_fragment(expires_in: 3.minutes) { Menu.all }
    end
  end
end
