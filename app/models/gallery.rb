class Gallery < ApplicationRecord
  has_attached_file :g_img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :g_img, content_type: /\Aimage\/.*\z/
end
