module Types
  class ModifierType < Types::BaseObject
    field :id, ID, null: false, cache_fragment: true

    field :display_order, Integer, null: false, cache_fragment: true
    field :default_quantity, Integer, null: false, cache_fragment: true
    field :price_override, Float, null: false, cache_fragment: true
    field :modifier_group, ModifierGroupType, null: true, cache_fragment: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
  end
end
