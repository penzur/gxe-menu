class ModifierGroup < ApplicationRecord
  belongs_to :item
  has_many :modifiers, dependent: :destroy

  validates :identifier, presence: true
  validates :label, presence: true
  validates :selection_required_min, presence: true
  validates :selection_required_max, presence: true
end
