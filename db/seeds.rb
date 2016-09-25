# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(email: "user1@medix.com", password: "password", password_confirmation: "password", role: "ceo")

User.create(email: "user2@medix.com", password: "password", password_confirmation: "password", role: "director_marketing")

User.create(email: "user3@medix.com", password: "password", password_confirmation: "password", role: "managing_director")

User.create(email: "user4@medix.com", password: "password", password_confirmation: "password", role: "marketing_manager")

User.create(email: "user5@medix.com", password: "password", password_confirmation: "password", role: "national_sales_manager")

User.create(email: "user6@medix.com", password: "password", password_confirmation: "password", role: "sales_manager")

User.create(email: "user7@medix.com", password: "password", password_confirmation: "password", role: "area_sales_manager")

User.create(email: "user8@medix.com", password: "password", password_confirmation: "password", role: "sales_officer")

User.create(email: "user9@medix.com", password: "password", password_confirmation: "password", role: "plant_manager")

User.create(email: "user10@medix.com", password: "password", password_confirmation: "password", role: "production_manager")

User.create(email: "user11@medix.com", password: "password", password_confirmation: "password", role: "production_incharge")

User.create(email: "user12@medix.com", password: "password", password_confirmation: "password", role: "quality_control_manager")

User.create(email: "user13@medix.com", password: "password", password_confirmation: "password", role: "quality_control_assistant")

User.create(email: "user14@medix.com", password: "password", password_confirmation: "password", role: "head_accountant")

User.create(email: "user15@medix.com", password: "password", password_confirmation: "password", role: "assistant_accountant")

User.create(email: "user16@medix.com", password: "password", password_confirmation: "password", role: "tablet_technician")

User.create(email: "user17@medix.com", password: "password", password_confirmation: "password", role: "syrup_technician")

User.create(email: "user18@medix.com", password: "password", password_confirmation: "password", role: "tablet_coating_technician")

User.create(email: "user19@medix.com", password: "password", password_confirmation: "password", role: "extract_technician")

User.create(email: "user20@medix.com", password: "password", password_confirmation: "password", role: "cosmatics_technician")

User.create(email: "user21@medix.com", password: "password", password_confirmation: "password", role: "packing_staff")