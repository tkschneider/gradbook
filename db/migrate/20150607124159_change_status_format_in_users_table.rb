# Author: Maxwell Barvian
class ChangeStatusFormatInUsersTable < ActiveRecord::Migration
  def change
    change_column :users, :status, :integer
  end
end
