class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        # :authentication_keys => [:email, :first_name, :last_name]

  validates :email, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :salaries
end
