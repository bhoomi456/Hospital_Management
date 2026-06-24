class Doctor < ApplicationRecord
  before_destroy do
    puts "Doctor #{name} destroyed"
  end

  belongs_to :hospital, inverse_of: :doctors

  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  has_one :doctor_profile
end
# belongs_to :hospital

# has_one :doctor_profile
# has_many :appointments
# has_many :patients, through: :appointments