class Refund < ActiveRecord::Base
  belongs_to :user
  validates :value, presence: true, length: {maximum: 30}
  validates :description, presence: true, length: {maximum: 200}
  validates :user_id, presence: true
  mount_uploader :photo, PhotoUploader
end
