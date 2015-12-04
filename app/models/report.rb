class Report < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def self.search(query)
    where("phone_no like ?", "%#{query}")
  end

end
