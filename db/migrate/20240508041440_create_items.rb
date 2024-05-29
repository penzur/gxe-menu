class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :identifier
      t.string :type
      t.string :label
      t.string :description
      t.decimal :price, precision: 10, scale: 2
      t.references :section, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
