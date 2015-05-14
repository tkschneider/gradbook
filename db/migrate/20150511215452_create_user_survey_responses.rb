class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.references :user_survey_id, index: true, foreign_key: true
      t.references :survey_question_id, index: true, foreign_key: true
      t.references :survey_question_option_id, index: true, foreign_key: true
      t.references :user_survey_option_choices_id, index: true, foreign_key: true
      t.text :response_text

      t.timestamps null: false
    end
  end
end
