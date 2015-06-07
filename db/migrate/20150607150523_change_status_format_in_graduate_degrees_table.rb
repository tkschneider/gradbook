# Author: Maxwell Barvian
class ChangeStatusFormatInGraduateDegreesTable < ActiveRecord::Migration
  def change
    change_column :users, :status, :integer
  end
end
