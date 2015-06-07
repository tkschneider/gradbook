# Created by Victor, edited by Maxwell Barvian
class CompanyInfo < ActiveRecord::Base
  belongs_to :company, dependent: :destroy
end
