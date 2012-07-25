class Link < ActiveRecord::Base
  attr_accessible :title, :url
  
  belongs_to :user
  
  validates_uniqueness_of :url
  #should validate unique urls in the databse too
end
