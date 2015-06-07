#Created by Tessa
class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.references :survey, index: true, foreign_key: true
      t.string :type
      t.integer :display_order
      t.text :text
      t.boolean :required

      t.timestamps null: false
    end
  end
end
