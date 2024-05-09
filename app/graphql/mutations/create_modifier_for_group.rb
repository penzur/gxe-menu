module Mutations
  class CreateModifierForGroup < BaseMutation
    argument :item_id, ID, required: true
    argument :modifier_group_id, ID, required: true
    argument :display_order, Integer, required: false
    argument :default_quantity, Integer, required: false
    argument :price_override, Float, required: true

    type Types::ModifierType

    def resolve(item_id:, modifier_group_id:, **args)
      modifier_group = ModifierGroup.find_by_id(modifier_group_id)
      raise 'given id for modifier group could not be found' if modifier_group.nil?

      item = Item.find_by_id(item_id)
      raise 'given id for item could not be found' if item.nil?

      modifier_group.modifiers.create!(item:, **args)
    end
  end
end
