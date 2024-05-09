module Mutations
  class CreateModifierGroup < BaseMutation
    argument :identifier, String, required: true
    argument :label, String, required: true
    argument :selection_required_min, Integer, required: true
    argument :selection_required_max, Integer, required: true

    type Types::ModifierGroupType

    def resolve(identifier:, label:, selection_required_min:, selection_required_max:)
      ModifierGroup.create!(
        identifier:,
        label:,
        selection_required_min:,
        selection_required_max:
      )
    end
  end
end
