class Post < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_many :comments, dependent: :destroy
  has_many :likes

  validates :title, presence: true
  validates :title, length: {in: 2..50}
  validates :content, presence: true


  def self.search(search)
    if search
      user = User.find_by(id: search)
      if user
        self.where(user_id: user.id)
      else
        Post.all
      end
    else
      Post.all
    end
  end

end
