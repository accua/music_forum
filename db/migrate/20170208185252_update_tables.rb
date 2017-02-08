class UpdateTables < ActiveRecord::Migration[5.0]
  def change
    add_column(:items, :user_id, :integer)
    add_column(:items, :list_id, :integer)
    add_column(:lists, :user_id, :integer)
    add_column(:lists, :item_id, :integer)
    add_column(:users, :item_id, :integer)
  end
end
