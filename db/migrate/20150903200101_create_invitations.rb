class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :event_id
      t.integer :invitee_id
      t.integer :inviter_id
      t.integer :status

      t.timestamps null: false
    end

    add_index :invitations, :invitee_id
    add_index :invitations, :inviter_id
    add_index :invitations, :event_id
  end
end
