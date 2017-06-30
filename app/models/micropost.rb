class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(create_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence:true, length: { maximum:140 }
end
