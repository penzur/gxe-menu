class CreateModifierGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :modifier_groups do |t|
      t.string :identifier
      t.string :label
      t.integer :selection_required_min
      t.integer :selection_required_max
      t.references :item, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
