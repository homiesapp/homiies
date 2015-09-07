class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  has_many :friendships
  has_many :homiies, :through => :friendships
end
