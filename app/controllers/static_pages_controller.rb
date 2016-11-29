class StaticPagesController < ApplicationController
  def home
  	@post = Post.new
  	@posts = Post.all.order(created_at: :desc)
  end
end
