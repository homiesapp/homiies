class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
	    t.string :oauth_token
	    t.datetime :oauth_expires_at
	    t.string :provider
	    t.string :uid
      t.timestamps null: false
    end
  end
end
