class MessagesController < ApplicationController
  before_action :set_message, only: [:update, :destroy]
  before_action :set_chat_room, only: [:create]

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
		message.chat_room = @chat_room
		
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
		def set_chat_room
			@chat_room = ChatRoom.find(params[:message][:chat_room_id])
		end

    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:chat_room_id, :user_id, :text)
    end
end
