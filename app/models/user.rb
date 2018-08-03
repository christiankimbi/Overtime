class User < ApplicationRecord
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  PHONE_REGEX = /\+\d{11}\z/

  validates_presence_of :first_name, :last_name, :phone
  validates_format_of :phone, with: PHONE_REGEX

  def full_name
    last_name.upcase + ", " + first_name
  end
end
