module Types
  class MenuType < Types::BaseObject
    field :id, ID, null: false, cache_fragment: true

    field :identifier, String, null: false, cache_fragment: true
    field :label, String, null: false, cache_fragment: true
    field :state, String, null: false, cache_fragment: true
    field :start_date, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :end_date, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :sections, [Types::SectionType], null: false, cache_fragment: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, cache_fragment: true
  end
end
