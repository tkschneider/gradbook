class CreateSurveyQuestionOptions < ActiveRecord::Migration
  def change
    create_table :survey_question_options do |t|
      t.references :survey_question_id, index: true, foreign_key: true
      t.integer :display_order
      t.text :text

      t.timestamps null: false
    end
  end
end
