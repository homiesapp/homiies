class Friendship < ActiveRecord::Base
	belongs_to :user
	belongs_to :homiie, :class_name => 'User'

end
