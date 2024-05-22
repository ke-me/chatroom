class RoomsController < ApplicationController
    def index
        # @roomじゃないの？
        rooms = Room.all
        render json: rooms, status: :ok
    end

    def create
        # @room = Room.new(room_params)じゃないの？
        room = Room.create(room_params)
        render json: room, status: :created
    end

    private
    # 以下、クラスの内部でのみ呼び出せるメソッド

    def room_params
        # roomモデル・nameキーをparamsに渡す。→ストロングパラメータという。
        params.require(:room).permit(:name)
    end
end
