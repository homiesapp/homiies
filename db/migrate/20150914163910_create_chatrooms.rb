class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
    	t.integer :event_id, index: true
      t.timestamps null: false
    end
  end
end