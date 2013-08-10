FactoryGirl.define do
  factory :user do
    sequence(:email, 10000) { |n| "#{n}@hzuwando.com" }
    sequence(:name) { |n| "Wando No.#{n}" }
    avatar "balabala"
    sequence(:yammer_uid, 100) { |n| "1500081#{n}" }
  end
end
