class Shoe < ApplicationRecord
  has_many  :users, class_name: "User", foreign_key: "shoe_id", dependent: :destroy
end
