class User < ActiveRecord::Base
  validates_presence_of :email, :name, :avatar, :yammer_uid

  has_many :comments
  has_many :tasks, -> { order("urgent DESC, updated_at DESC") },
    foreign_key: "author_id"
  has_many :review_tasks, -> { order("urgent DESC, updated_at DESC") },
    class_name: "Task", foreign_key: "reviewer_id"
  has_many :todo_tasks, -> { order("urgent DESC, updated_at DESC") },
    class_name: "Task", foreign_key: "assignee_id"

  def self.find_or_create_from_auth_hash auth_hash
    user_attributes = {
      email: auth_hash.info.email,
      avatar: auth_hash.info.image,
      name: auth_hash.info.name,
      yammer_uid: auth_hash.uid
    }

    if user = User.find_by_email(user_attributes[:email])
      user.update_attributes user_attributes.slice(:avatar, :name, :yammer_uid)
    else
      return nil unless user_attributes[:email].end_with?("@hzuwando.com")
      user = create! user_attributes
    end

    user
  end

  def self.find_by_email_and_return_id(_email)
    where(email: _email).first.try(:id)
  end

end
