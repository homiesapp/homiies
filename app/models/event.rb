class Event < ActiveRecord::Base
	has_many :invitations, foreign_key: 'event_id', class_name: 'Invitation'
  has_many :invitees, through: :invitations
  belongs_to :user
end
