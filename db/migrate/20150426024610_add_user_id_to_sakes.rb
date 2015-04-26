class AddUserIdToSakes < ActiveRecord::Migration
  def change
    add_column :sakes, :user_id, :integer
  end
end
