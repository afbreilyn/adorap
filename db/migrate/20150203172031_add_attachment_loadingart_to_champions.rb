class AddAttachmentLoadingartToChampions < ActiveRecord::Migration
  def self.up
    change_table :champions do |t|
      t.attachment :loadingart
    end
  end

  def self.down
    remove_attachment :champions, :loadingart
  end
end
