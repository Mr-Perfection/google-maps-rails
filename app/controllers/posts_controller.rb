class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]
  def create
  	@post = Post.new(post_params)
    if @post.save
    	flash[:info] = "Nice! Your post has been saved! Location: #{@post.street_address} #{@post.city} #{@post.state}, #{@post.zip}"
      
      
    	redirect_to root_path
    else
    	flash[:danger] = "Something went wrong, Stephen."
      redirect_to root_path
    end 
  end
  def edit	
  end
  def update
  	if @post.update_attributes(post_params)
    	flash[:info] = "Nice! Your post has been updated! Location: #{@post.street_address} #{@post.city} #{@post.state}, #{@post.zip}"
      
    	redirect_to root_path
    else
    	flash[:danger] = "Something went wrong, Stephen."
      redirect_to root_path
    end 
  end
  def show
  end

  def destroy
  	@post.destroy
  	redirect_to root_path
  end
  private
  def post_params
	params.require(:post).permit(:street_address, :city, :state, :zip)
  end
  def set_post
  	@post = Post.find(params[:id])
  end

end
