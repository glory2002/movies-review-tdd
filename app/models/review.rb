class Review < ActiveRecord::Base
  belongs_to :movie
  validates_presence_of :title
end
