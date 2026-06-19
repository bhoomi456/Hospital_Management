class Doctor < ApplicationRecord
  # validates :name ,presence: true, uniqueness: true
  # validates :specialization, presence: true
  belongs_to :hospital
  has_one :doctor_profile
end