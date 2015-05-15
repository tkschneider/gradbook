class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :type
      t.timestamp :last_login_timestamp

      t.timestamps null: false
    end
  end
end
