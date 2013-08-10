class Comment < ActiveRecord::Base
  validates_presence_of :task, :author, :content
  belongs_to :author, class_name: "User"
  belongs_to :task
end
