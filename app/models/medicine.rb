class Medicine < ApplicationRecord
  has_and_belongs_to_many :patients
  after_save {puts "Medicine callback ran"}
end