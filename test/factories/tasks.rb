FactoryGirl.define do
  factory :task do
    association :project
    association :author, factory: :user
    association :assignee, factory: :user
    association :reviewer, factory: :suer

    factory :task_with_comments do
      ignore do
        count 5
      end 

      after(:create) do |task, e|
        create_list(:comment, e.count, task: task)
      end
    end
  end
end
