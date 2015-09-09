class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :homiie_id

      t.timestamps null: false
    end

    add_index :friendships, :user_id
    add_index :friendships, :homiie_id
    add_index :friendships, [:user_id, :homiie_id], unique: true
  end
end
