class Modifier < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :modifier_group, optional: true

  validates :price_override, presence: true
  default_scope { order(display_order: :asc) }
end
