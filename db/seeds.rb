# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "Homiie", email: "homiiesapp@gmail.com")
User.create(username: "Tim", email: "Torbas@homiies.com")

Event.create(title: "Fiesta", city:"Vancouver", country: "Canada", address:"233 Robson St.", postal_code: "V16T4B", time: Time.new, description: "Party at Alex's!", picture: "0000010f0003930qls00eitj01abc02", lat: 123.45, long: 543.21, category: "dancing", user_id: 1)

Invitation.create(user_id: 1, homiie_id: 2, event_id: 1, attending:true)

Friendship.create(user_id: 1, homiie_id: 2)