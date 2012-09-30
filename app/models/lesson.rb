class Lesson < ActiveRecord::Base
  attr_accessible :name, :content, :sequence
    
  validates :name, presence: true
  validates :content, presence: true
  validates :sequence, presence: true
end
