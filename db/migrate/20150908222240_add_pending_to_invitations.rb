class AddPendingToInvitations < ActiveRecord::Migration
  def change
  	add_column :invitations, :pending, :boolean
  end
end
