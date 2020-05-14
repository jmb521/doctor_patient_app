class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    scope :by_date, ->{order(appointment_date: :asc)}
end
