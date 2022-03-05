class Prospect < ApplicationRecord
  belongs_to :status
  has_many :comments, dependent: :destroy
  belongs_to :user

  has_one_attached :photo

end
