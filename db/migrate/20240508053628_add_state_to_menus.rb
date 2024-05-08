class AddStateToMenus < ActiveRecord::Migration[7.1]
  def change
    add_column :menus, :state, :string
  end
end
