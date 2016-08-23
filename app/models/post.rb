class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 200 }

  validates :content,
    presence: true,
    length: { minimum: 1, maximum: 10000 }

  # default_scope { order('created_at DESC') }

  def posts_descending
    self.posts.order('created_at DESC')
  end


end
