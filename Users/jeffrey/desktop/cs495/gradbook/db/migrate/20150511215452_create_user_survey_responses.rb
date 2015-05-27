class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.references :user_survey, index: true, foreign_key: true
      t.references :survey_question, index: true, foreign_key: true
      t.references :survey_question_option, index: true, foreign_key: true
      t.references :survey_question_options_choice, index: true, foreign_key: true
      t.text :response_text

      t.timestamps null: false
    end
  end
end
