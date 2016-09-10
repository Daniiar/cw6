class AddAttachmentImageToPhotographies < ActiveRecord::Migration
  def self.up
    change_table :photographies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photographies, :image
  end
end
