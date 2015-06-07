# Author: Maxwell Barvian
class GivingBack < ActiveRecord::Base
  self.inheritance_column = nil
  default_scope { order('created_at DESC') }
  scope :pending, -> { where(hidden: false, completed: false) }
  scope :completed, -> { where(completed: true) }
  scope :archived, -> { where(hidden: true) }

  belongs_to :company
  enum type: [ :internship, :mentoring, :guest_speaking, :other ]

  validates :subject, presence: true, if: :needs_subject?
  validates :position, presence: true, if: :needs_position?
  validates :company, presence: true, if: :needs_company?
  validates :requirements, presence: true, if: :needs_requirements?
  validates :description, :contact_first_name, :contact_last_name, :contact_email, presence: true

  accepts_nested_attributes_for :company

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

  def contact_full_name
    "#{contact_first_name} #{contact_last_name}"
  end
end
