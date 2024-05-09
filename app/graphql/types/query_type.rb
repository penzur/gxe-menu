# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :menus, resolver: Resolvers::MenusResolver, description: 'Gets all the menu'
    field :menu, resolver: Resolvers::MenuResolver, description: 'Get menu by id'

    field :sections, resolver: Resolvers::SectionsResolver, description: 'Gets all the sections'
    field :section, resolver: Resolvers::SectionResolver, description: 'Gets section by id'

    field :items, resolver: Resolvers::ItemsResolver, description: 'Gets all the items'
    field :item, resolver: Resolvers::ItemResolver, description: 'Gets item by id'

    field :modifier_groups, resolver: Resolvers::ModifierGroupsResolver, description: 'Gets all the modifier groups'
    field :modifier_group, resolver: Resolvers::ModifierGroupResolver, description: 'Gets modifier group by id'
  end
end
