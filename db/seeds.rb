# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
PatientImmunization.create!(patient_id: '1', notes: 'pickles, eggs, red onion')
PatientImmunization.create!(patient_id: '12', notes: 'pickles, eggs, red onion')
PatientImmunization.create!(patient_id: '13', notes: 'pickles, eggs, red onion')
PatientImmunization.create!(patient_id: '124', notes: 'pickles, eggs, red onion')
PatientImmunization.create!(patient_id: '134', notes: 'pickles, eggs, red onion')
