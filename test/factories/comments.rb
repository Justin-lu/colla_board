FactoryGirld.define do
  factory :comment do
    association :author, factory: :user
    association :task
  end
end
