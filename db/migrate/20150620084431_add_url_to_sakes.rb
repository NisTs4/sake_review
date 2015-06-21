class AddUrlToSakes < ActiveRecord::Migration
  def change
    add_column :sakes, :url, :string
  end
end
