class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |u|
      u.string :name
      u.timestamps
    end

    create_table :items do |i|
      i.string :artist
      i.string :title
      i.string :link
      i.timestamps
      i.integer :upvote
      i.integer :downvote
      i.integer :popularity
      i.integer :total_votes
    end

    create_table :lists do |l|
      l.string :name
      l.timestamps
    end

    create_table :items_users do |i|
      i.integer :user_id
      i.integer :item_id
    end

    create_table :items_lists do |i|
      i.integer :list_id
      i.integer :item_id
    end

    create_table :lists_users do |i|
      i.integer :user_id
      i.integer :list_id
    end
  end
end
