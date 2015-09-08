class AddFriendsListToUsers < ActiveRecord::Migration
  def change
    add_column :users, :friends_list, :string
  end
end
