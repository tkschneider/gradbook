class CreateUserJobs < ActiveRecord::Migration
  def change
    create_table :user_jobs do |t|
      t.primary_key :id
      t.integer :company_id
      t.integer :salary_range
      t.string :job_title
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
