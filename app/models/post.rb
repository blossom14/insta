class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  enum emotion: { Happy:1, Sad: 2, Angry: 3, Soso:4, Heart:5 }

end
