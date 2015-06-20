class RemoveClassFromSakes < ActiveRecord::Migration
  def change
    remove_column :sakes, :class, :string
  end
end
