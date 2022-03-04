class Prospect < ApplicationRecord
  belongs_to :status
  has_many :comments, dependent: :destroy
  belongs_to :user
end
