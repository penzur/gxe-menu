class CreateModifiers < ActiveRecord::Migration[7.1]
  def change
    create_table :modifiers do |t|
      t.references :item, null: false, foreign_key: { on_delete: :cascade }
      t.references :modifier_group, null: false, foreign_key: { on_delete: :cascade }
      t.integer :display_order, default: 0
      t.integer :default_quantity, default: 0
      t.decimal :price_override, precision: 10, scale: 2

      t.timestamps
    end
  end
end
