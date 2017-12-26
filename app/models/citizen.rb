
class Citizen < ActiveRecord::Base
  has_many :actions
  validates_presence_of :username, :email, :password
  has_secure_password


end