class CreateDoctorProfile < ActiveRecord::Migration[8.1]
  def change
    create_table :doctor_profiles do |t|
      t.integer :experience
      t.string :qualification
      t.integer :consultation_fee
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
