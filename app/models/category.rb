class Category < ActiveRecord::Base
  # associations
  has_many :articles, dependent: :destroy
  belongs_to :user
  
  # validations
  validates :name, presence: true, length: { maximum: 255 }
  validates :color, presence: true
  validates :user, presence: true
end
