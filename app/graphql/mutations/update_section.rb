module Mutations
  class UpdateSection < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :description, String, required: false

    type Types::SectionType

    def resolve(id:, **args)
      section = Section.find_by_id(id)
      return nil if section.nil?

      section.update(args)
      section
    end
  end
end
