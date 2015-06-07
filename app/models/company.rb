# Created by Victor, edited by Maxwell Barvian
class Company < ActiveRecord::Base
  validates :company_name, presence: true, uniqueness: { case_sensitive: false }
end
