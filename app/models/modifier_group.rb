class ModifierGroup < ApplicationRecord
  has_many :modifiers

  validates :identifier, presence: true
  validates :label, presence: true
  validates :selection_required_min, presence: true
  validates :selection_required_max, presence: true
end
