status_states = ["applied", "rejected", "offer", "interviewing"]

10.times do 
	Job.create(
		job_title: Faker::Job.title,
		company_name: Faker::Company.name,
		status: status_states[rand(4)]
	)
end