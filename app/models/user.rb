class User < ActiveRecord::Base
  has_many :questions, dependent: :delete_all
  has_many :answers,   dependent: :delete_all
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
