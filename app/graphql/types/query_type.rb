module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :jobs, [Types::JobType], null: false

    def jobs
      Job.all
    end

    field :job, Types::JobType, null: false do
      argument :id, ID, required: true
    end

    def job(id:)
      Job.find(id)
    end

  end
end
