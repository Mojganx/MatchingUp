class AddBatchToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :batch, :integer
  end
end
