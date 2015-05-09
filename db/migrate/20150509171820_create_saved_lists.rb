class CreateSavedLists < ActiveRecord::Migration
  def change
    create_table :saved_lists do |t|

      t.timestamps null: false
    end
  end
end
