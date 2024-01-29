class HomeController < ApplicationController
  before_action :check_bio

  def index
    @post = Post.new
    @comment = Comment.new
    @friends_posts = current_user.friends_posts
  end
  
  private
  def check_bio
    if current_user
      redirect_to new_bio_path unless current_user.bio.present?
    end 
  end

end
