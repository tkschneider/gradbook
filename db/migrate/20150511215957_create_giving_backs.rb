class CreateGivingBacks < ActiveRecord::Migration
  def change
    create_table :giving_backs do |t|
      t.primary_key :id
      t.integer :user_id
      t.integer :company_id
      t.string :subject
      t.string :position
      t.text :description
      t.text :requirements
      t.boolean :approved
      t.boolean :completed
      t.string :type
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email

      t.timestamps null: false
    end
  end
end
