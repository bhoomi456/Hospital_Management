class Doctor < ApplicationRecord
  # validates :name ,presence: true, uniqueness: true
  # validates :specialization, presence: true
  belongs_to :hospital
end