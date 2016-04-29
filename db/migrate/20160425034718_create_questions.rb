class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text   :body
      t.string :user_email
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
