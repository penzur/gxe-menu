module Mutations
  class DeleteModifierGroup < BaseMutation
    argument :id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(id:)
      modifier_group = ModifierGroup.find_by_id(id)
      return false if modifier_group.nil?

      modifier_group.destroy
      modifier_group.destroyed?
    end
  end
end
