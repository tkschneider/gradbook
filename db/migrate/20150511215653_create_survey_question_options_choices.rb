class CreateSurveyQuestionOptionsChoices < ActiveRecord::Migration
  def change
    create_table :survey_question_options_choices do |t|
      t.primary_key :id
      t.integer :survey_question_id
      t.integer :display_order
      t.text :text

      t.timestamps null: false
    end
  end
end
