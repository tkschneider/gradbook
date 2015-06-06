# Author: Maxwell Barvian
class AddDefaultValuesToApprovedAndCompletedInGivingBacksTable < ActiveRecord::Migration
  def change
    change_column :giving_backs, :approved, :boolean, default: false
    change_column :giving_backs, :completed, :boolean, default: false
  end
end
