class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable,:omniauthable,:omniauth_providers => [:twitter]
  has_many :albums
  has_many :photos
  has_many :friends
  has_one :user_details

  include Authentication::ActiveRecordHelpers

end
