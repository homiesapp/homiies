class AddRatingToEvents < ActiveRecord::Migration
  def change
    add_column :events, :rating, :string
    add_column :events, :float, :string
  end
end
