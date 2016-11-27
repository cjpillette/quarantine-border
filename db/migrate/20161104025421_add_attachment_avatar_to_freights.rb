class AddAttachmentAvatarToFreights < ActiveRecord::Migration
  def self.up
    change_table :freights do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :freights, :avatar
  end
end
