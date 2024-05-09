module Mutations
  class CreateMenu < BaseMutation
    argument :identifier, String, required: true
    argument :state, String, required: true
    argument :label, String, required: true
    argument :start_date, GraphQL::Types::ISO8601DateTime, required: true
    argument :end_date, GraphQL::Types::ISO8601DateTime, required: true

    type Types::MenuType

    def resolve(state:, identifier:, label:, start_date:, end_date:)
      Menu.create!(
        state:,
        identifier:,
        label:,
        start_date:,
        end_date:
      )
    end
  end
end
