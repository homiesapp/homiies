class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :city
      t.string :country
      t.string :address
      t.string :postal_code
      t.datetime :time
      t.text :description
      t.string :picture
      t.float :lat
      t.float :long
      t.string :category
      t.integer :chat_room_id

      t.timestamps null: false
    end
  end
end
