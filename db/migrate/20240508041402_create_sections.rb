class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.string :identifier
      t.string :label
      t.string :description
      t.references :menu, foreign_key: { on_delete: :cascade }

      t.timestamps
    end
  end
end
