class AddImgColumnsToPost < ActiveRecord::Migration[5.0]
  def self.up
    change_table :posts do |t|
      t.has_attached_file :post_img
    end
  end

  def self.down
    drop_attached_file :posts, :post_img
  end
end
