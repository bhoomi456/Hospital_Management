class Hospital < ApplicationRecord
  has_many :doctors, inverse_of: :hospital
  # before_destroy {puts "Before destroy callback runs"}
end
