class AddImgColunmsToTimetables < ActiveRecord::Migration[5.0]
  def self.up
    change_table :timetables do |t|
      t.has_attached_file :t_img
    end
  end

  def self.down
    drop_attached_file :timetables, :t_img
  end
end
