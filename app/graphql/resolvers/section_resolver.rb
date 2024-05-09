module Resolvers
  class SectionResolver < BaseResolver
    type Types::SectionType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      Section.find(id)
    end
  end
end
