class FriendshipsController < ApplicationController

	def index
		@user = User.find(params[:id])
		@friendships = @user.friendships
		render json: @friendships, status: 200
	end
end
