# app/models/user.rb

class User < ApplicationRecord
  # Devise modules for authentication
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :news
  has_many :comments

  # Define user roles
  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
