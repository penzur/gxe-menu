module Mutations
  class AddItemToSection < BaseMutation
    argument :item_id, ID, required: true
    argument :section_id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(item_id:, section_id:)
      section = Section.find_by_id(section_id)
      return false if section.nil?

      item = Item.find_by_id(item_id)
      return false if item.nil?

      section.items.append(item)
      item.save
    end
  end
end
