class Section < ApplicationRecord
  belongs_to :menu, optional: true
  has_many :section_items, dependent: :destroy
  has_many :items, through: :section_items, dependent: :destroy

  validates :identifier, presence: true
  validates :label, presence: true
  validates :description, presence: true
end
