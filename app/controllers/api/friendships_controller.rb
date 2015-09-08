module API
	class FriendshipsController < ApplicationController

		def index
			@user = User.find(params[:user_id])
			@friendships = @user.friendships

			respond_to do |format|
				format.json { render json: @friendships, status: 200 }
			end

		end
	end
end
