class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.primary_key :id
      t.integer :survey_id
      t.string :type
      t.integer :display_order
      t.text :text
      t.boolean :required

      t.timestamps null: false
    end
  end
end
