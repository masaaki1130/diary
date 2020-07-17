class Message < ApplicationRecord
  validates :content, presence: true, unless: :image?
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
end
