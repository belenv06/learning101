class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :prospects
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable,
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end
