class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  # remoived registerable since I will be the only admin.Therefore users/signup route you will get an error
  # since the route no longer exists. We took out registerable
end
