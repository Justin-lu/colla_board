class User < ActiveRecord::Base

  validates_presence_of :name, :avatar

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :reprocess_avatar, if: :cropping?
  mount_uploader :avatar, AvatarUploader

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  private
  def reprocess_avatar
    self.avatar.recreate_versions!
  end
end
