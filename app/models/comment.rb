class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prospect
end
