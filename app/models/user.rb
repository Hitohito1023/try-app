class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  has_many :user_rooms
  has_many :chats

  has_many :likes, dependent: :destroy

  has_many :comments, dependent: :destroy
end
