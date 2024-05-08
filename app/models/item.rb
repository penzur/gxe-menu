class Item < ApplicationRecord
  has_many :item_modifier_groups
  has_many :modifier_groups, through: :item_modifier_groups

  validates :identifier, presence: true
  validates :item_type, presence: true
  validates :label, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
