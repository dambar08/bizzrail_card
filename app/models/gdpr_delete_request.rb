class GdprDeleteRequest < ApplicationRecord
  validates :email, :user_id, presence: true
end
