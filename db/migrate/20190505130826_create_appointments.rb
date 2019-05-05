class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date, null: false
      t.datetime :next_schedule
      t.decimal  :amount, null: false
      t.integer  :patient_id, index: true, null: false
      t.text     :observations, null: false
      t.text     :medicines
      t.timestamps null: false
    end
  end
end
