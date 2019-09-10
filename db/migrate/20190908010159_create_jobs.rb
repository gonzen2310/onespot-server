class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :status

      t.timestamps
    end
  end
end
