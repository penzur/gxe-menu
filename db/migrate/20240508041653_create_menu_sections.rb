class CreateMenuSections < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_sections do |t|
      t.references :menu, null: false, foreign_key: { on_delete: :cascade }
      t.references :section, null: false, foreign_key: { on_delete: :cascade }
      t.integer :display_order, default: 0

      t.timestamps
    end
  end
end
