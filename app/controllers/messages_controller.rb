class MessagesController < ApplicationController
  before_action :set_message, only: [:update, :destroy]
  before_action :set_chatroom, only: [:create]

	def new
		message = Message.new
		if message.save
			render json: message, status: :ok
		else
			render json: message.errors, status: :unprocessable_entity
		end 
	end

	def create
		message = Message.new(message_params)
		message.chatroom = @chatroom
		
		if message.save
			render nothing: true, status: :ok
		else
			render json: message.erros, status: :unprocessable_entity
		end
	end

	def update
		if @message.update(message_params)
			render nothing: true, status: :ok
		else
			render json: @message.errors, status: :unprocessable_entity
		end
	end

	def destroy
		@message.destroy
		render nothing: true, status: :ok
	end

	private 
		def set_chatroom
			@chatroom = Chatroom.find(params[:message][:chatroom_id])
		end

    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:chatroom_id, :user_id, :text)
    end
end
