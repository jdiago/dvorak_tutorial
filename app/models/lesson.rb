class Lesson < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  
  validates :name, presence: true
  validates :content, presence: true
  validates :sequence, presence: true
end
