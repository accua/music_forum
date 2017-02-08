class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |u|
      u.string :user_name

      u.timestamps
    end

    create_table :items do |i|
      i.string :artist
      i.string :title
      i.string :link
      i.integer :upvote
      i.integer :downvote
      i.integer :popularity

      i.timestamps
    end

    create_table :lists do |l|
      l.string :name

      l.timestamps
    end
  end
end
