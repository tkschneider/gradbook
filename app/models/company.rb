# Created by Victor, edited by Maxwell Barvian
class Company < ActiveRecord::Base
  has_one :company_info

  validates :company_name, presence: true, uniqueness: { case_sensitive: false }
end
