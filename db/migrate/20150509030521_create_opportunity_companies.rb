class CreateOpportunityCompanies < ActiveRecord::Migration
  def change
    create_table :opportunity_companies do |t|
      t.integer :opportunity_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
