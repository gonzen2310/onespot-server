module Types
	class UserType < Types::BaseObject
		field :id, ID, null: false
        field :name, String, null: false
        field :email, String, null: false
		field :is_premium, Boolean, null: false
        field :created_at, GraphQL::Types::ISO8601DateTime, null: false
        field :jobs, [Types::JobType], null: false

        def jobs
            Job.all
        end
    end
    
end


