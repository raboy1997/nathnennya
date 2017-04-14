class AddImgColunmsToGallery < ActiveRecord::Migration[5.0]
  def self.up
    change_table :galleries do |t|
      t.has_attached_file :g_img
    end
  end

  def self.down
    drop_attached_file :galleries, :g_img
  end
end
