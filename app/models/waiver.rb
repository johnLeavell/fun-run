class Waiver < ApplicationRecord
  belongs_to :user, required: true, class_name: "User", foreign_key: "user_id", counter_cache: true
  belongs_to :run, required: true, class_name: "Run", foreign_key: "run_id", counter_cache: true
end
