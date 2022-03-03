class Status < ApplicationRecord
  has_many :prospects, dependent: :destroy
end
