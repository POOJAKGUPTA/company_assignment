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

  def is_liked(model)
   if Like.where(:likeable => model ,:user_id => self.id).present?
   Like.where(:likeable => model ,:user_id => self.id).last.like==true
   end
   end
   def is_disliked(model)
   if Like.where(:likeable => model ,:user_id => self.id).present?
   Like.where(:likeable => model ,:user_id => self.id).last.like==false
   end
   end
   def self.find_model(id, type)
   model= type.constantize.find(id)
   return model
   end






end
