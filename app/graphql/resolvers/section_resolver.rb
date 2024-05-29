module Resolvers
  class SectionResolver < BaseResolver
    type Types::SectionType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      cache_fragment(expires_in: 3.minutes) { Section.find(id) }
    end
  end
end
