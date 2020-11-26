class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 50 }
  validates :body, presence: true, length: { minimum: 10, maximum: 300 }
end