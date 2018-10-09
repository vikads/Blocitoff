class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  validates :email, presence: true
  validates :password, presence: true
  validates_uniqueness_of :username
  validates_uniqueness_of :email

end
