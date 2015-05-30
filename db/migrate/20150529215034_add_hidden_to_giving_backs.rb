class AddHiddenToGivingBacks < ActiveRecord::Migration
  def change
    add_column :giving_backs, :hidden, :boolean, default: false
  end
end
