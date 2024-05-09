class Item < ApplicationRecord
  belongs_to :section, optional: true
  has_many :item_modifier_groups, dependent: :destroy
  has_many :modifier_groups, through: :item_modifier_groups, dependent: :destroy

  validates :identifier, presence: true
  validates :item_type, presence: true
  validates :label, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
