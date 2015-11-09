class AddAttachmentAvatarToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bikes, :avatar
  end
end
