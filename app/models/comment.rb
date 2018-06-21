class Comment < ApplicationRecord
  belongs_to :story

  validates :title, :body, presence: true
end
