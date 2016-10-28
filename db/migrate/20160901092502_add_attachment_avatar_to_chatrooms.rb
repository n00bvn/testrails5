class AddAttachmentAvatarToChatrooms < ActiveRecord::Migration
  def self.up
    change_table :chatrooms do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :chatrooms, :avatar
  end
end
