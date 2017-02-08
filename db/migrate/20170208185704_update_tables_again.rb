class UpdateTablesAgain < ActiveRecord::Migration[5.0]
  def change
    add_column(:users, :list_id, :integer)
  end
end
