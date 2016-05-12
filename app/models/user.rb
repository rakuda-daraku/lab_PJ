class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # ログインパラメータのアクセサ
  attr_accessor :login

  validates :username,
            uniqueness: { case_sensitive: :false },
            length: { minimum: 4, maximum: 20 }
end
