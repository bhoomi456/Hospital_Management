class Doctor < ApplicationRecord
  validates :name, pressence: true, uniqueness: true
  validates :specialization, pressence: true
end