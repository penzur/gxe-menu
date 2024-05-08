class RemoveDescriptionFromMenus < ActiveRecord::Migration[7.1]
  def change
    remove_column :menus, :description, :string
  end
end
