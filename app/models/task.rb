class Task < ActiveRecord::Base
  validates_presence_of :subject, :urgent, :project_id, :author_id

  STATUS = %w[todo doing completed accepted]

  belongs_to :project
  belongs_to :author, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :reviewer, class_name: "User"
  has_many :comments
end
