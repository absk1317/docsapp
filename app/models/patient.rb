# frozen_string_literal: true

# orm wrapper for patients
class Patient < ApplicationRecord
  include Admin::Patient

  validates :name, :mobile, :address, :status, presence: true
  validates :status, inclusion: { in: %w[active cured revisit] }
  validates :mobile, length: { is: 10 }

  has_many :appointments

  accepts_nested_attributes_for :appointments
end
