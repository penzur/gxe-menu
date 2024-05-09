module Mutations
  class DeleteSection < BaseMutation
    argument :id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(id:)
      section = Section.find_by_id(id)
      return false if section.nil?

      section.destroy
      section.destroyed?
    end
  end
end
