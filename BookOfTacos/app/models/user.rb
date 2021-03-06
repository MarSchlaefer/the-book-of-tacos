class User < ApplicationRecord
  has_many :posts
  has_many :recipes, through: :posts
  has_many :comments, through: :posts
  has_many :ingredients, through: :recipes
  has_many :likes


  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower


  validates :name, presence: true
  validates :name, uniqueness: true

  has_secure_password


  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

end # end class User
