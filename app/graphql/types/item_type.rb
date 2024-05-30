module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false, cache_fragment: true

    field :item_type, String, null: false, cache_fragment: true
    field :identifier, String, null: false, cache_fragment: true
    field :label, String, null: false, cache_fragment: true
    field :description, String, null: false, cache_fragment: true
    field :price, Float, null: false, cache_fragment: true
    field :modifier_groups, [Types::ModifierGroupType], null: true, cache_fragment: true
    field :section, SectionType, null: true, cache_fragment: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
  end
end
