# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'open-uri'
require 'json'
User.create(username: "Andrea", email: "andrea@gmail.com", lat: 49.281887, long: -123.108188)
User.create(username: "Alex", email: "alex@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Evert", email: "evert@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Tim", email: "tim@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Steph", email: "steph@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Bryan", email: "bryan@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Bob", email: "bob@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Joe", email: "joe@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Mich", email: "mich@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Mick", email: "mick@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Amanda", email: "amanda@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Georgia", email: "georgia@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Tara", email: "tara@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Nina", email: "nina@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Deborah", email: "deborah@homiies.com", lat: 49.281887, long: -123.108188)
User.create(username: "Samantha", email: "samantha@homiies.com", lat: 49.281887, long: -123.108188)

Event.create(title: "Camping", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2015), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Fiesta", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2016), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Birthday party", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2017), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Tennis game", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2018), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 2)
Event.create(title: "Beers at 999", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2019), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 2)
Event.create(title: "Beach barbecue", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2020), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 3)

Invitation.create(inviter_id: 1, invitee_id: 2, event_id: 1, status: 1)
Invitation.create(inviter_id: 1, invitee_id: 3, event_id: 1, status: 1)
Invitation.create(inviter_id: 1, invitee_id: 4, event_id: 1, status: 1)
Invitation.create(inviter_id: 1, invitee_id: 5, event_id: 1, status: 1)
Invitation.create(inviter_id: 1, invitee_id: 6, event_id: 1, status: 1)
Invitation.create(inviter_id: 1, invitee_id: 7, event_id: 1, status: 2)

Invitation.create(inviter_id: 1, invitee_id: 4, event_id: 2, status: 1)
Invitation.create(inviter_id: 2, invitee_id: 3, event_id: 4, status: 1)
Invitation.create(inviter_id: 3, invitee_id: 1, event_id: 6, status: 1)
Invitation.create(inviter_id: 2, invitee_id: 1, event_id: 5, status: 2)

Friendship.create(user_id: 1, homiie_id: 2)
Friendship.create(user_id: 1, homiie_id: 3)
Friendship.create(user_id: 1, homiie_id: 4)
Friendship.create(user_id: 2, homiie_id: 3)
Friendship.create(user_id: 1, homiie_id: 5)
Friendship.create(user_id: 1, homiie_id: 6)
Friendship.create(user_id: 1, homiie_id: 7)
Friendship.create(user_id: 1, homiie_id: 8)
Friendship.create(user_id: 1, homiie_id: 9)
Friendship.create(user_id: 1, homiie_id: 10)
Friendship.create(user_id: 1, homiie_id: 11)
Friendship.create(user_id: 1, homiie_id: 12)
Friendship.create(user_id: 1, homiie_id: 13)
Friendship.create(user_id: 1, homiie_id: 14)
Friendship.create(user_id: 1, homiie_id: 15)

ChatRoom.create(event_id: 1)

Message.create(chat_room_id: 1, user_id: 1, text: 'Hi')
Message.create(chat_room_id: 1, user_id: 2, text: 'Hey, how are you?')
Message.create(chat_room_id: 1, user_id: 1, text: 'good, yourself?')
Message.create(chat_room_id: 1, user_id: 2, text: 'Good! Cannot wait to go to that bar!')
Message.create(chat_room_id: 1, user_id: 1, text: 'yea me neither, love their specials')
Message.create(chat_room_id: 1, user_id: 2, text: 'you gonna get their on time?')
Message.create(chat_room_id: 1, user_id: 1, text: 'yup hope so..')
Message.create(chat_room_id: 1, user_id: 2, text: 'great')
Message.create(chat_room_id: 1, user_id: 1, text: 'see you there mate')


# users = Event.find(1).invitees
# users.each do |user|
#   @lat += user[:lat]
#   @long += user[:long]
# end
# @lat /= @users.length
# @long /= @users.length
@events = []
@api_key = 'AIzaSyCu_MX9ojL43aD69qCc8KdRri3QgQCe6fY'
@radius = '3000'
@lat = 49.281887
@long = -123.108188
def populate_events(arr, num) 
  num.times do |i|
  if arr['results'][i]['photos']
    photo_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=#{arr['results'][i]['photos'][0]['photo_reference']}&key=#{@api_key}"
  end
  event_details = JSON.load(open("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{arr['results'][i]['place_id']}&key=#{@api_key}"))
  @events << {
      title: arr['results'][i]['name'],
      lat: arr['results'][i]['geometry']['location']['lat'],
      long: arr['results'][i]['geometry']['location']['lng'],
      rating: arr['results'][i]['rating'],
      type_place: arr['results'][i]['types'][0],
      photo_req_url: photo_url,
      web_url: event_details['result']['website'],
      votes: 0,
    }   
  end
end

def get_places(type)
  JSON.load(open("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{@lat},#{@long}&radius=#{@radius}&types=#{type}&key=#{@api_key}"))
end

populate_events(get_places('bar'),20)
populate_events(get_places('park'),5)
populate_events(get_places('movie_theatre'),3)
populate_events(get_places('cafe'),7)
@events.shuffle!

@events.each do |suggestion|
  Suggestion.create(event_id: 1, title: suggestion[:title], lat: suggestion[:lat], long: suggestion[:long], rating: suggestion[:rating], type_place: suggestion[:type_place], web_url: suggestion[:web_url], votes: suggestion[:votes])
end
#Whenever a vote goes through, suggestion.votes += 1



