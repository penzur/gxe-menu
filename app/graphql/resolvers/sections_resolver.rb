module Resolvers
  class SectionsResolver < BaseResolver
    type [Types::SectionType], null: false

    def resolve
      cache_fragment(expires_in: 3.minutes) { Section.all }
    end
  end
end
