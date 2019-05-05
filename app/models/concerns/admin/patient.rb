# frozen_string_literal: true

module Admin::Patient
  extend ActiveSupport::Concern

  included do
    rails_admin do
      create do
        include_all_fields
        field :status, :enum do
          enum do
            %w[active cured revisit]
          end
        end
        field :appointments do
          hide
        end
      end
      edit do
        include_all_fields
        field :status, :enum do
          enum do
            %w[active cured revisit]
          end
        end
        field :appointments, :simple_has_many do
          inverse_of :patient
        end
      end
      show do
        include_all_fields
        field :appointments do
          pretty_value do
            bindings[:object].appointments.order('date desc').map do |appointment|
              "<a href='/appointment/#{appointment.id}/edit'>Edit</a>
               <a href='/appointment/#{appointment.id}'>Show</a>
               </br>
               <b>Date:</b> #{appointment.date},
               </br>
               <b>Observations:</b> #{appointment.observations}
               </br>
               <b>Medicines:</b> #{appointment.medicines}
               </br>"
            end.join('</br>').html_safe
          end
        end
      end
      list do
        include_all_fields
        fields :created_at, :updated_at do
          hide
        end
      end
    end
  end
end
