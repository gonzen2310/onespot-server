module Types
	class JobType < Types::BaseObject
		field :id, ID, null: false
		field :job_title, String, null: false
		field :company_name, String, null: false
		field :status, String, null: false
		field :created_at, GraphQL::Types::ISO8601DateTime, null: false
	end
end


