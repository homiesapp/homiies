class Chatroom < ActiveRecord::Base
		belongs_to :event
		has_many :messages, dependent: :destroy
end