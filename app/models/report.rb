class Report < ActiveRecord::Base
  include Her::Model
  belongs_to :category
end
