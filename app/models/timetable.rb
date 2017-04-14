class Timetable < ApplicationRecord
  has_attached_file :t_img, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :t_img, content_type: /\Aimage\/.*\z/
end
