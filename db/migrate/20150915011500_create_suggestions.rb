class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.integer :event_id
      t.string :title
      t.float :lat
      t.float :long
      t.float :rating
      t.string :type_place
      t.string :photo_req
      t.string :web_url
      t.integer :vote_counter

      t.timestamps null: false
    end
  end
end