# author: Maxwell Barvian
class ChangeTypeFormatInLoginTable < ActiveRecord::Migration
  def change
    change_column :logins, :type, :integer
  end
end
