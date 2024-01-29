class FriendRequestController < ApplicationController
  def create
    if current_user.send_request(params[:user])
      redirect_to current_user.bio
    end
  end

  def update
    @friend_request = FriendRequest.find(params[:id])
    respond_to do |format|
      if @friend_request.update(confirmed: true)
        format.html { redirect_to bio_url(current_user.bio), notice: "You have a new friend!" }
      end
    end
  end

  def delete
  end

end
