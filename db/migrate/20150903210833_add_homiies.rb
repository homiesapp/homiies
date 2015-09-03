class AddHomiies < ActiveRecord::Migration
  def change
    create_table :homiies do |t|
      t.integer :user_id
    end  
  end
end
