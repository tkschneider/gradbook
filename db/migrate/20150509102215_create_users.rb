class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #t.references :user_phone, index: true, foreign_key: true
      t.references :login, index: true, foreign_key: true
      t.string :email_addr
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      #t.references :user_job, index: true, foreign_key: true
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.integer :number_children
      t.integer :birth_month
      t.integer :birth_day
      t.integer :birth_year
      t.string :ethnicity
      t.boolean :searchable
      t.string :subscription_type

      t.timestamps null: false
    end
  end
end
