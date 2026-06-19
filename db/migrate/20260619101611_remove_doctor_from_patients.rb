class RemoveDoctorFromPatients < ActiveRecord::Migration[8.1]
  def change
    remove_reference :patients, :doctor, null: false, foreign_key: true
  end
end
