module Resolvers
  class ModifierGroupsResolver < BaseResolver
    type [Types::ModifierGroupType], null: false

    def resolve
      ModifierGroup.all
    end
  end
end
