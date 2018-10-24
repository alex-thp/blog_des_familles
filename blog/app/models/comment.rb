class Comment < ApplicationRecord
  has_many :articles
  has_many :users
end
