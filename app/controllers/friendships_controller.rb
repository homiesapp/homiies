class FriendshipsController < ApplicationController

	def homiies
		@user = User.find(params[:user_id])
		if @user
			render json: @user.homiies, status: :ok
		else
			render nothing: true, status: 403
		end
	end

	def destroy
		if Friendship.delete(params[:id]) == 1
			head :no_content
		else
			render nothing: true, status: 403
		end
	end

end

