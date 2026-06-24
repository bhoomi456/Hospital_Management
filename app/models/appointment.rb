class Appointment < ApplicationRecord
  after_create {puts "Appointment callback ran!"}
  belongs_to :doctor
  belongs_to :patient
end
