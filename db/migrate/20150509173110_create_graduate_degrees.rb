#Created by Victor
class CreateGraduateDegrees < ActiveRecord::Migration
  def change
    create_table :graduate_degrees do |t|
      t.references :user, index: true, foreign_key: true
      t.references :degree, index: true, foreign_key: true
      t.references :college, index: true, foreign_key: true
      t.date :graduation_date
      t.string :status

      t.timestamps null: false
    end
  end
end
