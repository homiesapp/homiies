class User < ActiveRecord::Base
  has_many :events
  has_many :invitations
  has_many :friendships
  has_many :homiies, :through => :friendships

  def self.from_omniauth(auth)
    @graph = Koala::Facebook::API.new(auth.credentials.token)
    user = User.find_by(uid: auth.uid)
    # @graph.get_connections("me", "taggable_friends")
    binding.pry
    if !user    
      user = User.create(username: auth.info.name, uid: auth.uid, email: @graph.get_object("me?fields=name,picture,email")['email'])
    end
    user.provider = auth.provider
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
    user
  end
end
