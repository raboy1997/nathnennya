class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.string :g_title
      t.string :g_body
      t.string :g_link

      t.timestamps
    end
  end
end
