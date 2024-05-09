module Resolvers
  class MenuResolver < BaseResolver
    type Types::MenuType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      Menu.find(id)
    end
  end
end
