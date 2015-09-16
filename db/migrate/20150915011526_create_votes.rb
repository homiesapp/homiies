class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :suggestion_id
      t.integer :user_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
