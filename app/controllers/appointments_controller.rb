class AppointmentsController < ApplicationController

    def index
        @doctor = Doctor.find_by(id: params[:doctor_id])
        if params[:doctor_id]
            @appointments = Doctor.find_by(id: params[:doctor_id]).appointments.by_date
            redirect_to doctors_path unless @appointments
        else
            @appointments = Appointment.all
        end
    end

    def show
        @appointment = Appointment.find(params[:id])
    end
end
