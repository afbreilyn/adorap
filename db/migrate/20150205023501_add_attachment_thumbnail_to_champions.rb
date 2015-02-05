class AddAttachmentThumbnailToChampions < ActiveRecord::Migration
  def self.up
    change_table :champions do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :champions, :thumbnail
  end
end
