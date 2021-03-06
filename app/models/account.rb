class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable ,:confirmable 

  mount_uploader :image, ProfileUploader
  mount_uploader :cover_image, ProfileUploader
         
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
    
  end
  
end
