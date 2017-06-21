class Micropost < ActiveRecord::Base
  validates :content, length: { maximum: 140 }
  validates :user_id, :content, presence: true
  belongs_to :user
end
