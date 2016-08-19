class Profile < ActiveRecord::Base
  # associations
  belongs_to :user
  
  # validations
  validates :firstname, presence: true, length: { maximum: 255 }
  validates :lastname, presence: true, length: { maximum: 255 }
  
  def self.search(search)
    if search
      where('firstname LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
