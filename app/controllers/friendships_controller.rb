class FriendshipsController < ApplicationController

	def homiies
		@user = User.find(params[:user_id])
		@friendships = Friendship.where(user_id: @user.id)

		@homiies = []
		@friendships.each do |friendship|
			@homiies << User.find(friendship.homiie_id)
		end
		
		render json: @homiies, status: :ok
	end
end
