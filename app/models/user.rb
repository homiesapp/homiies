class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  has_many :friendships
  has_many :homiies, :through => :friendships

  def self.from_omniauth(auth)
    binding.pry
    user = User.find(1)
    # where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      user
    # end
  end


end
