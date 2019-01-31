require 'faker'

Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all



10.times do |index|
  city = City.create!(name: Faker::Address.city)
  specialty = Specialty.create!(name:Faker::Job.field)

	doctor1 = Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,postal_code: Faker::Address.zip_code,city:city)
  doctor2 = Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,postal_code: Faker::Address.zip_code,city:city)
  patient1 = Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,city:city)
  patient2 = Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,city:city)
	appointment1 = Appointment.create!(date: Faker::Date.forward(100),doctor:doctor1,patient:patient1,city:city)
  appointment2 = Appointment.create!(date: Faker::Date.forward(100),doctor:doctor1,patient:patient2,city:city)
  appointment3 = Appointment.create!(date: Faker::Date.forward(100),doctor:doctor2,patient:patient1,city:city)
  appointment3 = Appointment.create!(date: Faker::Date.forward(100),doctor:doctor2,patient:patient2,city:city)
  doc_spe1 = JoinTableDoctorSpecialty.create!(doctor: doctor1, specialty: specialty)
  doc_spe2 = JoinTableDoctorSpecialty.create!(doctor: doctor2, specialty: specialty)


end
