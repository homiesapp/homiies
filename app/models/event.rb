class Event < ActiveRecord::Base
	has_many :invitations, foreign_key: 'event_id', class_name: 'Invitation', dependent: :destroy
  has_many :invitees, through: :invitations
  belongs_to :user
  has_one :chat_room, dependent: :destroy
end
