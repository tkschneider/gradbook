class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.primary)_key :id
      t.integer :survey_id
      t.string :question_type_id
      t.integer :display_order
      t.text :text
      t.boolean :required

      t.timestamps null: false
    end
  end
end
