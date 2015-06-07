#Created by Victor
#Modified by 

class User < ActiveRecord::Base

  # Generates CSV of
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end
  # set association
  belongs_to :login
  belongs_to :company
  #has_many :saved_lists, through: :saved_list_users
  #has_many :giving_backs
  #has_one :company
  has_many :user_phones
  has_many :graduate_degrees
  has_many :undergraduate_degrees
end # added by Leiyang Guo
