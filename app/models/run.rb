class Run < ApplicationRecord
  has_many  :waivers, class_name: "Waiver", foreign_key: "run_id", dependent: :destroy
  has_many  :user_runs, class_name: "UserRun", foreign_key: "run_id", dependent: :destroy
  belongs_to :vendor, class_name: "Vendor", foreign_key: "vendor_id", counter_cache: true
end
