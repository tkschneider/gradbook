class CreateQuestionTypes < ActiveRecord::Migration
  def change
    create_table :question_types do |t|
      t.primary_key :id
      t.string :question_type_name

      t.timestamps null: false
    end
  end
end
