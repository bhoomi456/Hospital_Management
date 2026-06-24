class Patient < ApplicationRecord
  validate :check_age
  validate :check_name
  has_many :appointments
  has_many :doctors, through: :appointments

  has_and_belongs_to_many :medicines

  private
  def check_age
    errors.add(:age, "must be greater than 0") if age <= 0
  end

  def check_name
    errors.add(:name, "Cannot start with number") if name =~ /^\d/
  end
end

# has_many :appointments
  # has_many :doctors, through: :appointments