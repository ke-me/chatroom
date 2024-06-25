# RailsとReactでの連携を確認するためのテスト
# /api/testにGETリクエストが送られた場合、{ message: 'This is a test message from Rails' }というJSONを返す
class ApplicationController < ActionController::API
    def test
      render json: { message: 'This is a test message from Rails' }
    end
end
