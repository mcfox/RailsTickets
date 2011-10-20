class Status < ActiveRecord::Base
  has_many :issues
  has_many :responses
end
