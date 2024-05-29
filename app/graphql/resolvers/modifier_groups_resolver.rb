module Resolvers
  class ModifierGroupsResolver < BaseResolver
    type [Types::ModifierGroupType], null: false

    def resolve
      cache_fragment(expires_in: 3.minutes) { ModifierGroup.all }
    end
  end
end
