module Mutations
  class CreateSection < BaseMutation
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :description, String, required: true

    type Types::SectionType

    def resolve(identifier:, label:, description:)
      Section.create!(
        identifier:,
        label:,
        description:
      )
    end
  end
end
