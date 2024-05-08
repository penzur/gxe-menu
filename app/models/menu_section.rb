class MenuSection < ApplicationRecord
  belongs_to :menu
  belongs_to :section

  validates :display_order, presence: true
  default_scope { order(display_order: :asc) }
end
