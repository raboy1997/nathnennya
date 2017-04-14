class CreateTimetables < ActiveRecord::Migration[5.0]
  def change
    create_table :timetables do |t|
      t.string :t_title
      t.string :t_body
      t.string :t_link

      t.timestamps
    end
  end
end
