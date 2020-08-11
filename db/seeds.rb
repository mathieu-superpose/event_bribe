require 'faker'

Attendance.destroy_all
User.destroy_all
Event.destroy_all

2.times do 
first_name = Faker::Name.first_name
last_name = Faker::Name.last_name

  user_list = User.create!(
  	first_name: first_name,
  	last_name: last_name, 
  	email: first_name.split(' ').join.downcase.delete('.') + "." + last_name.split(' ').join.downcase.delete('.') + "@yopmail.com",
  	description: Faker::Quote.most_interesting_man_in_the_world,
  	password: "foobar"
  	)
end

2.times do
	event_list = Event.create!(
		start_date: Time.at(Time.now.to_f + rand(1..365)*60*60*24),
		duration: rand(1..12)*5*rand(1..10),#durée de 5min à 10heures
		title: Faker::Cannabis.brand, # garantir + de 6 caractères
		description: Faker::Company.industry + ": " + Faker::Company.catch_phrase,
		price: rand(1..1000),
		location: Faker::Address.city,
		organizer: User.all.sample
		)
end

2.times do
  Attendance.create(
    attendant_id: User.all.ids.sample,
    event_id: Event.all.ids.sample)
end