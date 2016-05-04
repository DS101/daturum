class Question < ActiveRecord::Base
  belongs_to :user
  has_many   :answers, dependent: :delete_all
  validates :title, :body, presence: true
  validates :title, :body, uniqueness: true
  validates :title, :body, length: {minimum: 12}
end
