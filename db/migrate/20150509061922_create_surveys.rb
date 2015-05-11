class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.primary_key :id
      t.integer :created_by_user_id
      t.string :survey_name
      t.text :survey_description
      t.date :date_created
      t.string :status

      t.timestamps null: false
    end
  end
end
