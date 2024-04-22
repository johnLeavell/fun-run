class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :bottom_size, presence: true
  validates :top_size, presence: true

  has_many :waivers, class_name: "Waiver", foreign_key: "user_id", dependent: :destroy
  has_many :user_runs, class_name: "UserRun", foreign_key: "user_id", dependent: :destroy
  belongs_to :shoe, required: true, class_name: "Shoe", foreign_key: "shoe_id"
  has_many :likes, class_name: "Like", foreign_key: "fan_id"
end
