class Project < ActiveRecord::Base
  validates_presence_of :title
  has_many :tasks, -> { order("urgent DESC, updated_at DESC") }
end
