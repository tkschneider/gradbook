class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.primary_key :id
      t.integer :company_id
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :country_code
      t.integer :area_code
      t.string :prefix
      t.string :suffix

      t.timestamps null: false
    end
  end
end
