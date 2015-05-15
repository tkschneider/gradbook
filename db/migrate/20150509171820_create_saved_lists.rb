class CreateSavedLists < ActiveRecord::Migration
  def change
    create_table :saved_lists do |t|
      t.references :login, index: true, foreign_key: true
      t.string :list_name
      t.boolean :saved_user_list
      t.date :date_saved

      t.timestamps null: false
    end
  end
end
