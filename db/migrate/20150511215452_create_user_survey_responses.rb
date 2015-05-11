class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.primary_key :id
      t.integer :user_survey_id
      t.integer :survey_question_id
      t.integer :survey_question_option_id
      t.integer :user_survey_option_choices_id
      t.text :response_text

      t.timestamps null: false
    end
  end
end
