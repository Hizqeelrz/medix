# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(first_name: "user1", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4,   email: "user1@medix.com", password: "password", password_confirmation: "password", role: "ceo")

User.create(first_name: "user2", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user2@medix.com", password: "password", password_confirmation: "password", role: "director_marketing", boss_id: 1)

User.create(first_name: "user3", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user3@medix.com", password: "password", password_confirmation: "password", role: "managing_director", boss_id: 1)

User.create(first_name: "user4", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user4@medix.com", password: "password", password_confirmation: "password", role: "marketing_manager", boss_id: 2)

User.create(first_name: "user5", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user5@medix.com", password: "password", password_confirmation: "password", role: "national_sales_manager", boss_id: 4)

User.create(first_name: "user6", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user6@medix.com", password: "password", password_confirmation: "password", role: "sales_manager", boss_id: 5)

User.create(first_name: "user7", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user7@medix.com", password: "password", password_confirmation: "password", role: "area_sales_manager", boss_id: 6)

User.create(first_name: "user8", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user8@medix.com", password: "password", password_confirmation: "password", role: "sales_officer", boss_id: 7)

User.create(first_name: "user9", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user9@medix.com", password: "password", password_confirmation: "password", role: "plant_manager", boss_id: 3)

User.create(first_name: "user10", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user10@medix.com", password: "password", password_confirmation: "password", role: "production_manager")

User.create(first_name: "user11", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user11@medix.com", password: "password", password_confirmation: "password", role: "production_incharge")

User.create(first_name: "user12", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user12@medix.com", password: "password", password_confirmation: "password", role: "quality_control_manager")

User.create(first_name: "user13", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user13@medix.com", password: "password", password_confirmation: "password", role: "quality_control_assistant")

User.create(first_name: "user14", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user14@medix.com", password: "password", password_confirmation: "password", role: "head_accountant")

User.create(first_name: "user15", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user15@medix.com", password: "password", password_confirmation: "password", role: "assistant_accountant")

User.create(first_name: "user16", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user16@medix.com", password: "password", password_confirmation: "password", role: "tablet_technician")

User.create(first_name: "user17", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user17@medix.com", password: "password", password_confirmation: "password", role: "syrup_technician")

User.create(first_name: "user18", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user18@medix.com", password: "password", password_confirmation: "password", role: "tablet_coating_technician")

User.create(first_name: "user19", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user19@medix.com", password: "password", password_confirmation: "password", role: "extract_technician")

User.create(first_name: "user20", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user20@medix.com", password: "password", password_confirmation: "password", role: "cosmatics_technician")

User.create(first_name: "user21", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user21@medix.com", password: "password", password_confirmation: "password", role: "packing_staff")