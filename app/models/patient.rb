# frozen_string_literal: true

# orm wrapper for patients
class Patient < ApplicationRecord
  validates :name, :mobile, :address, :status, presence: true
  validates :status, inclusion: { in: %w[active cured revisit] }
  validates :mobile, length: 10

  has_many :appointments
end
