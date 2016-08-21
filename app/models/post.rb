class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :city

  validates :title,
    presence: true,
    length: { minimum: 1, maximum: 200 }

  validates :content,
    presence: true,
    length: { minimum: 1, maximum: 10000 }

end
