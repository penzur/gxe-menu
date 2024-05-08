class Section < ApplicationRecord
  has_many :section_items
  has_many :items, through: :section_items

  validates :identifier, presence: true
  validates :label, presence: true
  validates :description, presence: true
end
