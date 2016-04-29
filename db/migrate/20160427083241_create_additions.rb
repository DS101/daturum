class CreateAdditions < ActiveRecord::Migration
  def change
    create_table :additions do |t|
      t.text :body
      t.string :user_email
      t.boolean :confirmed, :default => false
      t.belongs_to :user, index: true
      t.belongs_to :answer, index: true

      t.timestamps null: false
    end
  end
end
