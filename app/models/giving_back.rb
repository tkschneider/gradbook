class GivingBack < ActiveRecord::Base
  self.inheritance_column = nil

  enum type: [ :internship, :mentoring, :guest_speaking, :other ]
end
