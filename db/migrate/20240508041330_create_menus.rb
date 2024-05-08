class CreateMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :menus do |t|
      t.string :identifier
      t.string :label
      t.string :description

      t.timestamps
    end
  end
end
