class Modifier < ApplicationRecord
  belongs_to :item
  belongs_to :modifier_group

  validates :price_override, presence: true
  default_scope { order(display_order: :asc) }
end
