class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :major_name
      t.string :type

      t.timestamps null: false
    end
  end
end
