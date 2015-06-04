# Author: Maxwell Barvian
class GivingBack < ActiveRecord::Base
  self.inheritance_column = nil
  default_scope { order('created_at DESC') }
  scope :pending, -> { where(hidden: false, completed: false) }
  scope :completed, -> { where(completed: true) }
  scope :hidden, -> { where(hidden: true) }

  enum type: [ :internship, :mentoring, :guest_speaking, :other ]

  validates_presence_of :subject, if: :needs_subject?
  validates_presence_of :position, if: :needs_position?
  # validates_presence_of :company_id, if: :needs_company?
  validates_presence_of :requirements, if: :needs_requirements?
  validates_presence_of :description, :contact_first_name, :contact_last_name, :contact_email

  def needs_subject?
    mentoring? || guest_speaking? || other?
  end

  def needs_position?
    internship?
  end

  def needs_company?
    internship?
  end

  def needs_requirements?
    internship?
  end
end
