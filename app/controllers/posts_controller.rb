class PostsController < ApplicationController



  
  def create 	
	 	@post =  Post.new(post_params)
	 	@post.user_id = current_user.id
	  @post.save!
	  redirect_to @post
  end

  private

    def post_params
    	
      params.require(:post).permit(:text, :user_id)
    end
end

