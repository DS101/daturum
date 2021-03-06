class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.string :user_email
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true

      t.timestamps null: false
    end
  end
end
