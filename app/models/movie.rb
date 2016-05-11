class Movie < ActiveRecord::Base
  belong_to :category
  validates_presence_of :title, :category
end
