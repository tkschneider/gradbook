# Author: Maxwell Barvian
class ChangeTypeFormatInDegreesTable < ActiveRecord::Migration
  def change
    change_column :degrees, :type, :integer
  end
end
