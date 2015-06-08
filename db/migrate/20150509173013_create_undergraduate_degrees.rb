#Created by Victor
class CreateUndergraduateDegrees < ActiveRecord::Migration
  def change
    create_table :undergraduate_degrees do |t|
      t.references :user, index: true, foreign_key: true
      t.references :college, index: true, foreign_key: true
      t.references :degree, index: true, foreign_key: true
      t.date :graduation_date

      t.timestamps null: false
    end
  end
end
