class AddAttachmentImageToCats < ActiveRecord::Migration
  def self.up
    change_table :cats do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :cats, :image
  end
end
