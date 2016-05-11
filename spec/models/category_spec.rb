require 'rails_helper'

RSpec.describe Category, type: :model do
  it {is_expected.to have_many :movies}
  it {is_expected.to validates_presence_of :name}

end
