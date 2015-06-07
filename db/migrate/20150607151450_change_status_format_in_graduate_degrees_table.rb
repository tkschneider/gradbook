# Author: Maxwell Barvian
class ChangeStatusFormatInGraduateDegreesTable < ActiveRecord::Migration
  def change
    change_column :graduate_degrees, :status, :integer
  end
end
