# frozen_string_literal: true

# orm wrapper for appointments
class Appointment < ApplicationRecord
  validates :date, :amount, :observations, presence: true
  belongs_to :patient
end
