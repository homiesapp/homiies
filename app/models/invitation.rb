class Invitation < ActiveRecord::Base
  belongs_to :inviter, foreign_key: 'inviter_id', class_name: 'User'
  belongs_to :invitee, foreign_key: 'invitee_id', class_name: 'User'
  belongs_to :event
end
