class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.primary_key :id
      t.text :opportunity_text
      t.integer :opportunity_id

      t.timestamps null: false
    end
  end
end
