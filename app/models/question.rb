class Question < ActiveRecord::Base
  belongs_to :user
  has_many   :answers, dependent: :delete_all
end
