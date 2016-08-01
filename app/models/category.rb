class Category < ActiveRecord::Base
  # associations
  has_many :articles, dependent: :destroy
  
  # validations
  validates :name, presence: true, length: { maximum: 255 }
end
