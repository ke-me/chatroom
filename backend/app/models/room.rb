class Room < ApplicationRecord
    # Room モデルと Message モデルは1対多の関係
    # Room が削除されたときに関連する Message も一緒に削除される
    has_many :messages, dependent: :destroy
end
