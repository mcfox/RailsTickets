class Milestone < ActiveRecord::Base
  belongs_to :project
  has_many :issues

end
