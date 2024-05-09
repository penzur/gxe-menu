class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :identifier
      t.string :type
      t.string :label
      t.string :description
      t.float :price
      t.references :section, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
