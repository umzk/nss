class User < ActiveRecord::Base
  validates :login, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ ,
            message: "может содерждать только буквы и цифры" }
  validate  :email, presence: true, uniqueness: true
  validates_associated :user_list
  has_one :user_list

end
