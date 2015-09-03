class Event < ActiveRecord::Base
  has_many: :invitations
  belongs_to: :user
  
end
