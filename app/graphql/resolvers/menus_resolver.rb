module Resolvers
  class MenusResolver < BaseResolver
    type [Types::MenuType], null: false

    def resolve
      Menu.all
    end
  end
end
