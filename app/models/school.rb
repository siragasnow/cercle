class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :menus, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name, presence: true
  validates :postcode, presence: true
  validates :street_address, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true, uniqueness: true

end
