class MessagesController < ApplicationController
    def index
        room = Room.find(params[:room_id])
        # Roomに関連付けられたMessageオブジェクトを新しいものから最大20件取得
        messages = room.messages.limit(20)
        render json: messages, status: :ok
    end

    def create
        room = Room.find(params[:room_id])
        # message_params はプライベートメソッド
        messages = room.messages.create(message_params)
        render json: messages, status: :created
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_name)
    end
end
