module Resolvers
  class SectionsResolver < BaseResolver
    type [Types::SectionType], null: false

    def resolve
      Section.all
    end
  end
end
