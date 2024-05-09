module Mutations
  class AddSectionToMenu < BaseMutation
    argument :menu_id, ID, required: true
    argument :section_id, ID, required: true

    type GraphQL::Types::Boolean

    def resolve(menu_id:, section_id:)
      menu = Menu.find_by_id(menu_id)
      return false if menu.nil?

      section = Section.find_by_id(section_id)
      return false if section.nil?

      menu.sections.append(section)
      menu.save
    end
  end
end
