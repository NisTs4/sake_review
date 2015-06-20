class AddClassificationToSakes < ActiveRecord::Migration
  def change
    add_column :sakes, :classification, :string
  end
end
