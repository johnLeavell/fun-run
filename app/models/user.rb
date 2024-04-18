# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  username               :string
#  first_name             :string
#  last_name              :string
#  bottom_size            :string
#  top_size               :string
#  pronation_level        :string
#  shoe_id                :integer
#  admin                  :boolean          default(FALSE)
#  avatar                 :string
#  waivers_count          :integer          default(0)
#  user_runs_count        :integer          default(0)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
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
  
  has_many  :waivers, class_name: "Waiver", foreign_key: "user_id", dependent: :destroy
  has_many  :user_runs, class_name: "UserRun", foreign_key: "user_id", dependent: :destroy
  belongs_to :shoe, required: true, class_name: "Shoe", foreign_key: "shoe_id"


end
