class AddCatchcopyToSakes < ActiveRecord::Migration
  def change
    add_column :sakes, :catchcopy, :string
  end
end
