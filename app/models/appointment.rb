# frozen_string_literal: true

# orm wrapper for appointments
class Appointment < ApplicationRecord
  include Admin::Appointment

  validates :date, :amount, :observations, presence: true
  belongs_to :patient
end
