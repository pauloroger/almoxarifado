require 'faker'

FactoryGirl.define do
  factory :user do
    login {Faker::Internet.user_name}
		password {Faker::Internet.password(8)}
  end

end
