class Doctor < ApplicationRecord
  validates :name ,presence: true, uniqueness: true
  validates :specialization, presence: true
end