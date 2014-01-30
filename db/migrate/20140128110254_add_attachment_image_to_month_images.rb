class AddAttachmentImageToMonthImages < ActiveRecord::Migration
  def self.up
    change_table :month_images do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :month_images, :image
  end
end
