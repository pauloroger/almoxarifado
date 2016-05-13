require 'faker'

FactoryGirl.define do
  factory :material do
    name {Faker::Commerce.product_name}
  end
end
