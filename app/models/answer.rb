class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question
  has_many   :additions,         dependent: :delete_all
  has_many   :confirm_additions, dependent: :delete_all

  public

    def approved_additions
      arr = Array.new

      Addition.where(:answer_id => id).find_each do |a|
        if a.confirmed
          arr << a
        end
      end
      return arr
    end
end
