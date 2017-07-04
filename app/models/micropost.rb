class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(create_at: :desc) }
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence:true, length: { maximum:140 }
end
