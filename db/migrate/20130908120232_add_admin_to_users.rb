class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, defauld: false
  end
end
