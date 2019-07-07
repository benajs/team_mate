class ProjectMap < ActiveRecord::Base
  belongs_to :profile, class_name: "Profile",
                        foreign_key: "user_id"
  belongs_to :project
end
