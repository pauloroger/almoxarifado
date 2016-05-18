require 'faker'

FactoryGirl.define do
  factory :stock do
    amount 1
    action false
    material nil
    user nil
  end
end


