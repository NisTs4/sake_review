class AddAttachmentImageToSakes < ActiveRecord::Migration
  def self.up
    change_table :sakes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sakes, :image
  end
end
