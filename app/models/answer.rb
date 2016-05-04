class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many   :additions, dependent: :delete_all
  validates  :body, presence: true
  
  

  
end
