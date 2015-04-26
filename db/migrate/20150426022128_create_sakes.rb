class CreateSakes < ActiveRecord::Migration
  def change
    create_table :sakes do |t|
      t.string :name
      t.text :description
      t.string :size
      t.string :maker
      t.string :rating

      t.timestamps null: false
    end
  end
end
