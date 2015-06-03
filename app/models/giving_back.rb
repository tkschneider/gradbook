# Author: Maxwell Barvian
class GivingBack < ActiveRecord::Base
  self.inheritance_column = nil
  default_scope { order('created_at DESC') }
  scope :pending, -> { where(hidden: false, completed: false) }
  scope :completed, -> { where(completed: true) }
  scope :hidden, -> { where(hidden: true) }

  enum type: [ :internship, :mentoring, :guest_speaking, :other ]
end
