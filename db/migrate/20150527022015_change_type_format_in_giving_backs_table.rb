# Author: Maxwell Barvian
class ChangeTypeFormatInGivingBacksTable < ActiveRecord::Migration
  def change
    change_column :giving_backs, :type, :integer
  end
end
