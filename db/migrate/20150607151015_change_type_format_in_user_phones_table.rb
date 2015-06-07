# Author: Maxwell Barvian
class ChangeTypeFormatInUserPhonesTable < ActiveRecord::Migration
  def change
    change_column :user_phones, :type, :integer
  end
end
