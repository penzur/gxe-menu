class AddEndDateToMenus < ActiveRecord::Migration[7.1]
  def change
    add_column :menus, :end_date, :date
  end
end
