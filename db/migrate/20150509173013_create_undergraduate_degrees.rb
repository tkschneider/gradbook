class CreateUndergraduateDegrees < ActiveRecord::Migration
  def change
    create_table :undergraduate_degrees do |t|

      t.timestamps null: false
    end
  end
end
