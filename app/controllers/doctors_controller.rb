class DoctorsController < ApplicationController
   

    def index
        @doctors = Doctor.all
    end

    def show
        
        @doctor = Doctor.find(params[:id])
        
        render :layout => "doctor2"
    end

    def new
        @doctor = Doctor.new

    end
    def edit
        @doctor = Doctor.find(params[:id])
    end

  
end
