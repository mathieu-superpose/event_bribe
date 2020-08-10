require 'faker'

Attendance.destroy_all
User.destroy_all
Event.destroy_all



10.times do 
  user_list = User.create!(
  	first_name: Faker::Name.name,
  	last_name: Faker::Name.name, 
  	email: first_name + "." + last_name + "@yopmail.com",
  	description: Faker::ChuckNorris.fact
  	)
end

5.times do
	event_list = Event.create!(
		start_date: Time.at(Time.now.to_f + rand(1..365)*60*60*24)
		duration: rand(1..12)*5*rand(1..10)#durée de 5min à 10heures
		title: Faker::Company.buzzword + Faker::Company.profession
		description: Faker::Company.industry + ": " + Faker::Company.catch_phrase
		price: rand(1..1000)
		location: Faker::Address.city
		)
end
