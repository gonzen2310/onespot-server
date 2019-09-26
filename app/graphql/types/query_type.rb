module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :viewer, Types::UserType, null: false
    
    def viewer
      User.first
    end

  end
end
