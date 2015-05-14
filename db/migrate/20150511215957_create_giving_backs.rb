class CreateGivingBacks < ActiveRecord::Migration
  def change
    create_table :giving_backs do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :company_id, index: true, foreign_key: true
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
