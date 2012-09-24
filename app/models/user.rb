class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  
  has_secure_password

  validates :name, presence: true, uniqueness: true
end
