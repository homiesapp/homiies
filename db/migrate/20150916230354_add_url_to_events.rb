class AddUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :web_url, :string
    add_column :events, :string, :string
  end
end
