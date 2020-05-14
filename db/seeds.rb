# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
    Doctor.create(:name => Faker::FunnyName.name)
end

15.times do 
    Patient.create(:name => Faker::FunnyName.name)
end
15.times do 
    Appointment.create(:doctor_id => Doctor.all.sample.id, patient_id: Patient.all.sample.id, appointment_date: Faker::Time.forward(days:30))
end