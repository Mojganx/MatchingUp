class AddUserToCouples < ActiveRecord::Migration[5.1]
  def change
    add_reference :couples, :user, foreign_key: true
  end
end
