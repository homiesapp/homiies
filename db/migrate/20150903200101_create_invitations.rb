class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :user_id
      t.integer :homiie_id
      t.integer :event_id
      t.boolean :attending

      t.timestamps null: false
    end
  end
end
