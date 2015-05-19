FactoryGirl.define do
  factory :license do
    product { Faker::Commerce.product_name }
    key { Faker::Number.number(15) }
  end
end
