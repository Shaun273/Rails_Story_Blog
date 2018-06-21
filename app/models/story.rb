class Story < ApplicationRecord
  has_many :comments


    validates :title, :body, presence: true
    validates :title, length: {maximum: 30, message: "Max length is 30 chars"}
end
