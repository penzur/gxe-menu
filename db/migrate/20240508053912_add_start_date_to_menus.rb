class AddStartDateToMenus < ActiveRecord::Migration[7.1]
  def change
    add_column :menus, :start_date, :date
  end
end
