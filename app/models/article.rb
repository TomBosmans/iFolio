class Article < ActiveRecord::Base
  # associations
  belongs_to :category
  
  # validations
  validates :name, presence: true, length: { maximum: 255 }
end
