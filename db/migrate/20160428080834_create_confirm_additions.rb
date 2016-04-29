class CreateConfirmAdditions < ActiveRecord::Migration
  def change
    create_table   :confirm_additions do |t|
      t.text       :body
      t.belongs_to :answer, index: true
      t.integer    :addition_id
      
      t.timestamps null: false
    end
  end
end
