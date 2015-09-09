# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "Andrea", email: "andrea@gmail.com")
User.create(username: "Alex", email: "alex@homiies.com")
User.create(username: "Evert", email: "evert@homiies.com")
User.create(username: "Tim", email: "tim@homiies.com")
User.create(username: "Steph", email: "steph@homiies.com")
User.create(username: "Bryan", email: "bryan@homiies.com")

Event.create(title: "Camping", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2015), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Fiesta", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2016), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Birthday party", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2017), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 1)
Event.create(title: "Tennis game", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2018), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 2)
Event.create(title: "Beers at 999", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2019), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 2)
Event.create(title: "Beach barbecue", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new(2020), description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 49.25, long: -123.01, category: "dancing", user_id: 3)

Invitation.create(user_id: 1, homiie_id: 2, event_id: 1, attending:true, pending: false)
Invitation.create(user_id: 1, homiie_id: 3, event_id: 1, attending:false, pending: true)
Invitation.create(user_id: 1, homiie_id: 4, event_id: 2, attending:false, pending: true)
Invitation.create(user_id: 2, homiie_id: 3, event_id: 4, attending:false, pending: true)
Invitation.create(user_id: 3, homiie_id: 1, event_id: 6, attending:true, pending: false)
Invitation.create(user_id: 2, homiie_id: 1, event_id: 5, attending:false, pending: true)

Friendship.create(user_id: 1, homiie_id: 2)
Friendship.create(user_id: 1, homiie_id: 3)
Friendship.create(user_id: 1, homiie_id: 4)
Friendship.create(user_id: 2, homiie_id: 3)
Friendship.create(user_id: 3, homiie_id: 5)
