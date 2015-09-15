class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.integer :chatroom_id, index: true
    	t.integer :user_id, index: true
    	t.text :text
      t.timestamps null: false
    end
  end
end
