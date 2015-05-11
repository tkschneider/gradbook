class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.primary_key :id
      t.integer :user_id
      t.integer :survey_id
      t.date :date_completed
      t.boolean :anonymous

      t.timestamps null: false
    end
  end
end
