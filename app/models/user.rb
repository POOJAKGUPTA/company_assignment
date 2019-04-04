class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    mount_uploader :image, AvatarUploader

    belongs_to :city
    belongs_to :company

    
   


   def name
   	self.first_name + " " + self.last_name
   end

end
