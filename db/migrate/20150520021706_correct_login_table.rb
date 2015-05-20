class CorrectLoginTable < ActiveRecord::Migration
   def change
	remove_column :logins, :password
	remove_column :logins, :last_login_timestamp	
  end
end
