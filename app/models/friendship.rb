class Friendship < ActiveRecord::Base
	belongs_to :user
	belongs_to :homiie, foreign_key: 'homiie_id', class_name: 'User'
end
