class AddStatusToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :status, :integer, default: 0, null: false
  end
end
