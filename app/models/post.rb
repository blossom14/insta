class Post < ApplicationRecord
  include SimpleHashtag::Hashtaggable
  hashtaggable_attribute :text

  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  belongs_to :emotion

  mount_uploader :photo, PhotoUploader

end
