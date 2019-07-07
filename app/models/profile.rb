class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :designation
  has_and_belongs_to_many :projectmaps
  has_and_belongs_to_many :project , through: :projectmap
  belongs_to :profile , class_name: "Profile",foreign_key: "manager_id"

end
