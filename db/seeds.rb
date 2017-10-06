# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

School.create(name: 'Colegio el Carmen Teresiano La Reina', description: "Colegio catolico", phone: 22752669, direction: "Avenida Principe de Gales 8050")
School.create(name: 'Colegio el Carmen Teresiano La Reina ads', description: "Colegio ajsjsj", phone: 22752669, direction: "Avenida Principe de Gales 8050")
School.create(name: 'Colegio el Carmennasdnsa Teresiano La Reina', description: "Colegio catoansdnbansdbnlico", phone: 22752669, direction: "Avenida Principe de Gales 8050")
School.create(name: 'Colegio el Carmen Teresiano La nasmReina', description: "Colegansabdnsaio catolico", phone: 22752669, direction: "Avenida Principe de Gales 8050")
User.create! do |u|
    u.email = 'contactokaivo@gmail.com'
    u.password = 'kaivoteam'
    u.password_confirmation = 'kaivoteam'
    u.holsense_role = 1
    u.utp_role = 0
    u.subject_role = 0
end

User.create! do |u|
    u.email = 'utp@gmail.com'
    u.password = '123123123'
    u.password_confirmation = '123123123'
    u.holsense_role = 0
    u.utp_role = 1
    u.subject_role = 0
end

User.create! do |u|
    u.email = 'asignatura@gmail.com'
    u.password = '12341234'
    u.password_confirmation = '12341234'
    u.holsense_role = 0
    u.utp_role = 0
    u.subject_role = 1
end
