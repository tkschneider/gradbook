class CreateUserPhones < ActiveRecord::Migration
  def change
    create_table :user_phones do |t|
      t.integer :country_code
      t.integer :area_code
      t.integer :prefix
      t.integer :suffix
      t.integer :extension
      t.string :type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
