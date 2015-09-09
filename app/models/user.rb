class User < ActiveRecord::Base
  has_many :events

  has_many :friendships, foreign_key: 'user_id', class_name: 'Friendship'
  has_many :homiies, :through => :friendships
end
