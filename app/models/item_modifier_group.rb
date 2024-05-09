class ItemModifierGroup < ApplicationRecord
  belongs_to :item, optional: true
  belongs_to :modifier_group, optional: true
end
