FactoryGirl.define do
  factory :movie do
    title { Faker::Name.title }
    image "bla bal"
    category_id 1
  end

end
