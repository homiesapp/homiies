class User < ActiveRecord::Base
  has_many :events

  has_many :friendships, foreign_key: 'user_id', class_name: 'Friendship'
  has_many :homiies, :through => :friendships

  def self.from_omniauth(auth)
    @graph = Koala::Facebook::API.new(auth.credentials.token)
    user = User.find_by(uid: auth.uid)
    if !user    
      user = User.create(username: auth.info.name, uid: auth.uid, email: @graph.get_object("me?fields=name,picture,email")['email'])
    end
    friends  =[]
    names = []
    pics = []
    result = @graph.get_connections("me", "taggable_friends")
    while result 
      friends << result
      result = result.next_page
    end
    friends.flatten!
    friends.length.times do |i|
      names << friends[i]['name']
      pics << friends[i]['picture']['data']['url']
    end
    names.each do |name|
      friend_user = User.find_by username: name
      if friend_user
        friendship = Friendship.create(user_id: user.id, homiie_id: friend_user.id)
        friendship.save!
      end
    end

    
    user.provider = auth.provider
    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
    user
  end
end
