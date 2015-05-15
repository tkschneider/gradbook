class Login < ActiveRecord::Base
  has_one :user
  self.inheritance_column = nil
end
