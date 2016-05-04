class AddConfirmAdditionToAdditions < ActiveRecord::Migration
  def change
    add_column :additions, :confirm_addition, :text
  end
end
