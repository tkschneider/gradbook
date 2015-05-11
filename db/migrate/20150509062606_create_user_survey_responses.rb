class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.primary_key :id
      t.integer :user_survey_id
      t.integer :survey_question_id
      t.text :text_response

      t.timestamps null: false
    end
  end
end
