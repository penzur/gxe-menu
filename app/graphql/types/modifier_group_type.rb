module Types
  class ModifierGroupType < Types::BaseObject
    field :id, ID, null: false, cache_fragment: true

    field :identifier, String, null: false, cache_fragment: true
    field :label, String, null: false, cache_fragment: true
    field :selection_required_min, Integer, null: false, cache_fragment: true
    field :selection_required_max, Integer, null: false, cache_fragment: true
    field :modifiers, [Types::ModifierType], null: false, cache_fragment: true
    field :item, ItemType, null: true, cache_fragment: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
  end
end
