class AddUserIdToItems < ActiveRecord::Migration[5.0]
  def change
    drop_table :items_users
    add_column :items, :user_id, :integer
  end
end
