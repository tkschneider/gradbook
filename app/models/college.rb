# Created by Victor, edited by Maxwell Barvian
class College < ActiveRecord::Base
  has_many :undergraduate_degrees
  has_many :graduate_degrees
end
