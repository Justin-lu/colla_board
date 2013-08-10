FactoryGirld.define do
  factory :project do
    sequence(:title) { |n| "Project, No.#{n}" }
    sequence(:description) { |n| "Project description, random #{n}" }
    archived false

    trait :archive do
      archived true
    end

    factory :project_with_tasks do
      ignore do
        count 5
      end

      after(:create) do |project, evaluator|
        FactoryGirl.create_list(:task, evaluator.count, project: project)
      end
    end
  end
end
