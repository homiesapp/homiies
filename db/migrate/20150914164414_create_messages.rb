class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer :chat_room_id, index: true
    	t.integer :user_id, index: true
    	t.string :text
      t.timestamps null: false
    end
  end
end
