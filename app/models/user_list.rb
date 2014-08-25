class UserList < ActiveRecord::Base
  validates :title, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/ ,
            message: "может содерждать только буквы и цифры" }
  belongs_to :user
end
