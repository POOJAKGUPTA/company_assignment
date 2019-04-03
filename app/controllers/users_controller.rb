class UsersController < ApplicationController
  
  def profile
  	@user = current_user
  end

 def my_all_users
 	@user= User.all
 	
 end

  

end
