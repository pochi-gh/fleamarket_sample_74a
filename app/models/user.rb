class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname,
    presence: true
  validates :email,
    format: { with: /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/},
    presence: true
  validates :first_name,
    format: { with: /^[ぁ-んァ-ン一-龥]/},
    presence: true
  validates :last_name,
    format: { with: /^[ぁ-んァ-ン一-龥]/},
    presence: true
  validates :first_name_kana,
    format: { with: /^([ァ-ン]|ー)+$/},
    presence: true
  validates :last_name_kana,
    format: { with: /^([ァ-ン]|ー)+$/},
    presence: true
  validates :birthday,
    presence: true
  has_one :address
end
