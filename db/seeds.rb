status_states = ["applied", "rejected", "offer", "interviewing"]

10.times do 
	Job.create(
		job_title: Faker::Job.title,
		company_name: Faker::Company.name,
		status: status_states[rand(4)],
		user_id: rand(1..10)
	)
end

10.times do 
	User.create(
		email: Faker::Internet.unique.email,
		password: "password",
		name: Faker::Name.unique.name, 
		is_premium: false
	)
end