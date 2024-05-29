module Resolvers
  class ModifierGroupResolver < BaseResolver
    type Types::ModifierGroupType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      cache_fragment(expires_in: 3.minutes) { ModifierGroup.find(id) }
    end
  end
end
