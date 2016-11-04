# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

province = ["punjab", "kpk", "sindh_balochistan"]
area_punjab = ["lahore","rawalpindi","faisalabad","multan","dera ghazi khan","rahim yar khan","sahiwal","gujranwala","gujrat"]
area_kpk = ["dera ismail khan","peshawar","abbotabad","sawat","gilgit baltishtan"]
area_sindh_balochistan = ["hydrabad","sukkar","larkana","nawabshah","karachi"]
province.each do |p|
  province = Province.find_or_create_by(name: p)
  puts "#{province.name} added ======>"
  case p
  when "punjab"
    area_punjab.each do |a|
      area = Area.find_or_create_by(name: a, province_id: province.id)
      puts "#{area.name} -------"
      case a
      when "lahore"
        ["lahore", "kasur", "sheikhupura", "nankana sahib"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "rawalpindi"
        ["rawalpindi", "attock", "murree", "chakwal", "taxila"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "faisalabad"
        ["faisalabad", "sargodha", "jhang", "toba tek singh", "khoshaab", "chinyot"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "multan"
        ["multan", "khanewal", "muzafar_garh", "vehari"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "rahim yar khan"
        ["rahim yar khan", "sadiqabad", "bahawalpur", "lodhran"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "dera ghazi khan"
        ["dera ghazi khan", "layyah", "taunsa", "raajan pur"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "gujranwala"
        ["gujranwala", "narowal", "sialkot", "wazirabad"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "gujrat"
        ["gujrat", "mandi bahauddin", "jehlum", "mirpur"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "sahiwal"
        ["sahiwal", "okara", "pakpattan", "bahawal nagar"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  when "kpk"
    area_kpk.each do |a|
      area = Area.find_or_create_by(name: a, province_id: province.id)
      puts "#{area.name} added -------"
      case a
      when "peshawar"
        ["baajor agency", "char sadda", "mardan", "noshehra", "kohat", "para chanaar"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "abbotabad"
        ["manshera", "batgram", "muzafarabad", "haripur hazara"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "sawat"
        ["bunair", "shangla", "taimer gran", "butkhaila", "upper dir"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "dera ismail khan"
        ["bhakkar", "mianwali", "bannu", "lucky marwat"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "gilgit baltistan"
        ["basham", "sakardu", "gilgit"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  when "sindh_balochistan"
    area_sindh_balochistan.each do |a|
      area = Area.find_or_create_by(name: a, province_id: province.id)
      puts "#{area.name} added -------"
      case a
      when "hydrabad"
        ["hydrabad", "mirpur khaas", "tando adam", "badin"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "sukkhar"
        ["sukkhar", "khair pur", "ghotki", "kashmor"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "larkana"
        ["larkana", "dadu", "jacobabad"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "nawabshah"
        ["nawabshah", "noshehro feroz", "saanhgar"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      when "karachi"
        ["karachi city1", "karachi city2", "karachi city3"].each {|c| City.find_or_create_by(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  end
end


User.delete_all

ceo = User.create(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  gender: rand(0..1),
  dob: Faker::Date.between(50.years.ago, 20.years.ago),
  nic: Faker::Business.credit_card_number,
  address: Faker::Address.street_address,
  city: "Lahore",
  state: "Punjab",
  phone: Faker::PhoneNumber.phone_number,
  mobile: Faker::PhoneNumber.cell_phone,
  joining_date: Faker::Date.between(10.years.ago, Date.today),
  marital_status: rand(0..1),
  basic_salary: [23000, 280000, 33000, 40000].sample,
  qualification: 4,
  email: "user1@medix.com",
  password: "password",
  password_confirmation: "password",
  role: :ceo,
  image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0543.jpg"
  )
puts "#{ceo.email} added"

3.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: rand(0..1),
    dob: Faker::Date.between(50.years.ago, 20.years.ago),
    nic: Faker::Business.credit_card_number,
    address: Faker::Address.street_address,
    city: "Lahore",
    state: "Punjab",
    phone: Faker::PhoneNumber.phone_number,
    mobile: Faker::PhoneNumber.cell_phone,
    joining_date: Faker::Date.between(10.years.ago, Date.today),
    marital_status: rand(0..1),
    basic_salary: [23000, 280000, 33000, 40000].sample,
    qualification: 4,
    email: Faker::Internet.free_email,
    password: "password",
    password_confirmation: "password",
    role: 5,
    image: ""
    )
  puts "#{user.email} -- #{user.role} added"
end

20.times do |n|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: rand(0..1),
    dob: Faker::Date.between(50.years.ago, 20.years.ago),
    nic: Faker::Business.credit_card_number,
    address: Faker::Address.street_address,
    city: "Lahore",
    state: "Punjab",
    phone: Faker::PhoneNumber.phone_number,
    mobile: Faker::PhoneNumber.cell_phone,
    joining_date: Faker::Date.between(10.years.ago, Date.today),
    marital_status: rand(0..1),
    basic_salary: [23000, 280000, 33000, 40000].sample,
    qualification: 4,
    email: Faker::Internet.free_email,
    password: "password",
    password_confirmation: "password",
    role: 6,
    image: ""
    )
  puts "#{n} ---> #{user.email} added"
end

60.times do |n|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    gender: rand(0..1),
    dob: Faker::Date.between(50.years.ago, 20.years.ago),
    nic: Faker::Business.credit_card_number,
    address: Faker::Address.street_address,
    city: "Lahore",
    state: "Punjab",
    phone: Faker::PhoneNumber.phone_number,
    mobile: Faker::PhoneNumber.cell_phone,
    joining_date: Faker::Date.between(10.years.ago, Date.today),
    marital_status: rand(0..1),
    basic_salary: [23000, 280000, 33000, 40000].sample,
    qualification: 4,
    email: Faker::Internet.free_email,
    password: "password",
    password_confirmation: "password",
    role: 7,
    image: ""
    )
  puts "#{n} ---> #{user.email} added"
end





Vendor.delete_all
100.times do |n|
  vendor = Vendor.create(
    name: Faker::Name.name,
    company: Faker::Company.name,
    phone: Faker::PhoneNumber.phone_number,
    mobile: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_address,
    email: Faker::Internet.free_email
    )
end

RawMaterial.delete_all
50.times do |n|
  raw_material = RawMaterial.create(name: "Raw Material #{n}")
  puts "#{raw_material.name} added."
end

Equipment.delete_all
10.times do |n|
  equipment = Equipment.create(name: "Equipment #{n}", make: "Yamaha", model: "2014", company: "Company #{n}", price: "88000", capacity: "150", life: "7")
  puts "#{equipment.name} added."
end

Product.delete_all
250.times do |n|
  product = Product.create(name: "Product #{n}")
  puts "#{product.name} added."
end

ProductIngrediant.delete_all
10.times do |n|
  product_ingrediant = ProductIngrediant.create(quantity: 20 + n)
  puts "#{product_ingrediant.quantity} added."
end

Order.delete_all
Client.delete_all
200.times do |n|
  client = Client.create(
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.free_email,
    website: Faker::Internet.url,
    company: Faker::Company.name,
    address: Faker::Address.street_address,
    # province_id: rand(1..2),
    # area_id: rand(1..19),
    city_id: rand(1066..1136)
    )
  100.times do |n|
    order = Order.create(
      client_id: client.id,
      grandtotal: rand(1000..1000000),
      created_at: Faker::Date.between(2.years.ago, Date.today)
      )
    puts "#{order.grandtotal} added."
  end
  puts "#{n} ---> #{client.name} | #{client.company} added."
end

BankTransaction.delete_all
BankAccount.delete_all
10.times do |n|
  account = BankAccount.create(
    account_title: Faker::Name.name,
    account_number: Faker::Business.credit_card_number,
    balance: rand(100000..3000000),
    created_at: Faker::Date.between(2.years.ago, Date.today)
    )
  100.times do |n|
    transaction = BankTransaction.create(
      bank_account_id: account.id,
      amount: rand(1000..200000),
      transaction_type: rand(0..1),
      created_at: Faker::Date.between(2.years.ago, Date.today)
      )
    puts "#{transaction.amount}."
  end
  puts "Account added ---> #{account.account_title}."
end