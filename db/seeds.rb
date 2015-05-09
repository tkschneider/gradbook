# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


2.times do |i|
  Login.create(username: "user#{i+1}")
end

2.times do |i|
  User.create(login_id: Login.find("#{i+1}").id)
end
