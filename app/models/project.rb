class Project < ActiveRecord::Base
  belongs_to :client
  has_many :projectmaps 
  has_many :users ,through: :projectmaps
end
