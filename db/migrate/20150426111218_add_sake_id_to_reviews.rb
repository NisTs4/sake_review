class AddSakeIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :sake_id, :integer
  end
end
