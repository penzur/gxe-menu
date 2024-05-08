# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :menus, [Types::MenuType], null: true, description: 'Gets all the menu' do
    end
    def menus
      Menu.all
    end

    field :menu, MenuType, null: true, description: 'Get menu by id' do
      argument :id, ID, required: true
    end
    def menu(id:)
      Menu.find(id)
    end

    field :sections, [Types::SectionType], null: true, description: 'Gets all the sections' do
    end
    def sections
      Section.all
    end

    field :section, SectionType, null: true, description: 'Gets section by id' do
      argument :id, ID, required: true
    end
    def section(id:)
      Section.find(id)
    end

    field :items, [Types::ItemType], null: true, description: 'Gets all the items' do
    end
    def items
      Item.all
    end

    field :item, ItemType, null: true, description: 'Gets item by id' do
      argument :id, ID, required: true
    end
    def item(id:)
      Item.find(id)
    end

    field :modifier_groups, [Types::ModifierGroupType], null: true, description: 'Gets all the modifier groups' do
    end
    def modifier_groups
      ModifierGroup.all
    end

    field :modifier_group, ModifierGroupType, null: true, description: 'Gets modifier group by id' do
      argument :id, ID, required: true
    end
    def modifier_group(id:)
      ModifierGroup.find(id)
    end
  end
end
