class CreateSearchadmins < ActiveRecord::Migration
  def change
    create_table :searchadmins do |t|

      t.timestamps null: false
    end
  end
end
