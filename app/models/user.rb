class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  has_many :friendships
  has_many :homiies, :through => :friendships

  def self.from_omniauth(auth)

    binding.pry
    user = User.find_by(uid: auth.uid)
    if !user    
      user = User.create(username: auth.info.name, uid:auth.uid)
    end
    user.provider = auth.provider
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
    user
  end


end
