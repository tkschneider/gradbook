#Created by Victor
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.references :user_phone, index: true, foreign_key: true
      t.references :login, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.string :email_addr
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      #t.references :user_job, index: true, foreign_key: true
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :spouse_first_name
      t.string :spouse_middle_initial
      t.string :spouse_last_name
      t.integer :number_children
      t.integer :birth_month
      t.integer :birth_day
      t.integer :birth_year
      t.string :ethnicity
      t.boolean :general_opt_in
      t.boolean :email_opt_in
      t.boolean :phone_opt_in
      t.boolean :badges_opt_in
      t.string :status
      t.string :salary_range
      t.string :job_title
      t.date :start_date
      t.date :end_date
      t.boolean :searchable
      t.string :subscription_type

      t.timestamps null: false
    end
  end
end
