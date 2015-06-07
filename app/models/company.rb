class Company < ActiveRecord::Base
  validates :company_name, presence: true, uniqueness: { case_sensitive: false }
end
