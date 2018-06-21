class Story < ApplicationRecord
  has_many :comments


    validates :title, :body, presence: true
    validates :title, length: {maximum: 30, message: "Max length must be between 5 and 30 chars", minimum: 5}
end
