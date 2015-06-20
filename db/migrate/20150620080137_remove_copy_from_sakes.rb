class RemoveCopyFromSakes < ActiveRecord::Migration
  def change
    remove_column :sakes, :copy, :string
  end
end
