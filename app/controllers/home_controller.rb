class HomeController < ApplicationController
  before_action :check_bio

  def index
    @post = Post.new
  end
  
  private
  def check_bio
    if current_user
      redirect_to new_bio_path unless current_user.bio.present?
    end 
  end

end
