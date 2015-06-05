class Login < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :logon
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:logon]
  has_one :user
  self.inheritance_column = nil

  enum type: [ :worker, :admin, :user ]

  validates :username, :email, :presence => true, :uniqueness => {:case_sensitive => false}
  #Brad Bilter - added to enforce some rules for adding logins
  validates :last_name, :first_name, :middle_initial, :presence => true, :on => :update


  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if logon = conditions.delete(:logon)
      where(conditions.to_hash).where(["username = :value OR email = :value", { :value => logon.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
