class Message < ApplicationRecord
  # room:referencesを指定したことで、自動生成↓
  belongs_to :room
end
