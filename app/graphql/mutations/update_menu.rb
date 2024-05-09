module Mutations
  class UpdateMenu < BaseMutation
    argument :id, ID, required: true
    argument :identifier, String, required: false
    argument :state, String, required: false
    argument :label, String, required: false
    argument :start_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :end_date, GraphQL::Types::ISO8601DateTime, required: false

    type Types::MenuType

    def resolve(id:, **args)
      menu = Menu.find_by_id(id)
      return nil if menu.nil?

      menu.update(args)
      menu
    end
  end
end
