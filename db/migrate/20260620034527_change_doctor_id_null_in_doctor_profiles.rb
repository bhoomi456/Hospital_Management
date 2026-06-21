class ChangeDoctorIdNullInDoctorProfiles < ActiveRecord::Migration[8.1]
  def change
    change_column_null :doctor_profiles, :doctor_id, true
  end
end
