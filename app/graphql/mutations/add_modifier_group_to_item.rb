module Mutations
  class AddModifierGroupToItem < BaseMutation
    argument :modifier_group_id, ID, required: true
    argument :item_id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(item_id:, modifier_group_id:)
      item = Item.find_by_id(item_id)
      return false if item.nil?

      modifier_group = ModifierGroup.find_by_id(modifier_group_id)
      return false if modifier_group.nil?

      item.modifier_groups.append(modifier_group)
      item.save
    end
  end
end
