class CreateGraduateDegrees < ActiveRecord::Migration
  def change
    create_table :graduate_degrees do |t|

      t.timestamps null: false
    end
  end
end
