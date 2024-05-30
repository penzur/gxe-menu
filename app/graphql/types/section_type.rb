module Types
  class SectionType < Types::BaseObject
    field :id, ID, null: false, cache_fragment: true

    field :identifier, String, null: false, cache_fragment: true
    field :label, String, null: false, cache_fragment: true
    field :description, String, null: false, cache_fragment: true
    field :items, [Types::ItemType], null: false, cache_fragment: true
    field :menu, MenuType, null: true, cache_fragment: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
  end
end
