class AddSakedetailsToSakes < ActiveRecord::Migration
  def change
    add_column :sakes, :alcohol, :integer
    add_column :sakes, :copy, :string
    add_column :sakes, :ingredient, :string
    add_column :sakes, :rice, :string
    add_column :sakes, :seimaibuai, :integer
    add_column :sakes, :home, :string
    add_column :sakes, :class, :string
  end
end
