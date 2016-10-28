class AddAttachmentPictureToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :messages, :picture
  end
end
