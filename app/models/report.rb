class Report < ActiveRecord::Base
  belongs_to :category

  def self.search(query)
    where("phone_no like ?", "%#{query}")
  end

end
