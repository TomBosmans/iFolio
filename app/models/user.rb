class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  # associations
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  
  has_many :categories, dependent: :destroy
  
  # validations
  validates :profile, presence: true
end
