module Mutations
  class UpdateModifierGroup < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :label, String, required: false
    argument :selection_required_min, Integer, required: false
    argument :selection_required_max, Integer, required: false

    type Types::ModifierGroupType

    def resolve(id:, **args)
      modifier_group = ModifierGroup.find(id)
      modifier_group.update(args)
      modifier_group
    end
  end
end
