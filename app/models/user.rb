class User < ActiveRecord::Base


  has_many :posts
  has_many :cities, :through => :posts

  has_secure_password

  validates :first_name, :last_name,
    presence: true,
    length: { minimum: 1, maximum: 200 }

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
    presence: true,
    format: { with: EMAIL_REGEX},
    uniqueness: true,
    length: { maximum: 200 }

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

end
