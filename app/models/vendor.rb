class Vendor < ApplicationRecord
  has_many  :runs, class_name: "Run", foreign_key: "vendor_id", dependent: :destroy
end
