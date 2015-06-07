#Created by Victor
class RemoveDuplicates < ActiveRecord::Migration
  def change
    remove_column :Users, :first_name
    remove_column :Users, :last_name
    remove_column :Users, :middle_initial
    remove_column :Users, :email_addr
  end
end
