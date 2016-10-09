# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Province.delete_all
Area.delete_all
City.delete_all
province = ["punjab", "kpk", "sindh_balochistan"]
area_punjab = ["lahore","rawalpindi","faisalabad","multan","dera ghazi khan","rahim yar khan","sahiwal","gujranwala","gujrat"]
area_kpk = ["dera ismail khan","peshawar","abbotabad","sawat","gilgit baltishtan"]
area_sindh_balochistan = ["hydrabad","sukkar","larkana","nawabshah","karachi"]
province.each do |p|
  province = Province.create(name: p)
  puts "#{province.name} added ======>"
  case p
  when "punjab"
    area_punjab.each do |a|
      area = Area.create(name: a, province_id: province.id)
      puts "#{area.name} -------"
      case a
      when "lahore"
        ["lahore", "kasur", "sheikhupura", "nankana sahib"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "rawalpindi"
        ["rawalpindi", "attock", "murree", "chakwal", "taxila"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "faisalabad"
        ["faisalabad", "sargodha", "jhang", "toba tek singh", "khoshaab", "chinyot"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "multan"
        ["multan", "khanewal", "muzafar_garh", "vehari"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "rahim yar khan"
        ["rahim yar khan", "sadiqabad", "bahawalpur", "lodhran"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "dera ghazi khan"
        ["dera ghazi khan", "layyah", "taunsa", "raajan pur"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "gujranwala"
        ["gujranwala", "narowal", "sialkot", "wazirabad"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "gujrat"
        ["gujrat", "mandi bahauddin", "jehlum", "mirpur"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "sahiwal"
        ["sahiwal", "okara", "pakpattan", "bahawal nagar"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  when "kpk"
    area_kpk.each do |a|
      area = Area.create(name: a, province_id: province.id)
      puts "#{area.name} added -------"
      case a
      when "peshawar"
        ["baajor agency", "char sadda", "mardan", "noshehra", "kohat", "para chanaar"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "abbotabad"
        ["manshera", "batgram", "muzafarabad", "haripur hazara"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "sawat"
        ["bunair", "shangla", "taimer gran", "butkhaila", "upper dir"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "dera ismail khan"
        ["bhakkar", "mianwali", "bannu", "lucky marwat"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "gilgit baltistan"
        ["basham", "sakardu", "gilgit"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  when "sindh_balochistan"
    area_sindh_balochistan.each do |a|
      area = Area.create(name: a, province_id: province.id)
      puts "#{area.name} added -------"
      case a
      when "hydrabad"
        ["hydrabad", "mirpur khaas", "tando adam", "badin"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "sukkhar"
        ["sukkhar", "khair pur", "ghotki", "kashmor"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "larkana"
        ["larkana", "dadu", "jacobabad"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "nawabshah"
        ["nawabshah", "noshehro feroz", "saanhgar"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      when "karachi"
        ["karachi city1", "karachi city2", "karachi city3"].each {|c| City.create(name: c, area_id: area.id); puts "#{c} added"}
      end
    end
  end
end


User.delete_all
User.create(first_name: "user1", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4,   email: "user1@medix.com", password: "password", password_confirmation: "password", role: "ceo", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0543.jpg")
puts "user 1 added"

User.create(first_name: "user2", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user2@medix.com", password: "password", password_confirmation: "password", role: "director_marketing", boss_id: 1, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0537.jpg")
puts "user 2 added"

User.create(first_name: "user3", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user3@medix.com", password: "password", password_confirmation: "password", role: "managing_director", boss_id: 1, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 3 added"

User.create(first_name: "user4", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user4@medix.com", password: "password", password_confirmation: "password", role: "marketing_manager", boss_id: 2, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 4 added"

User.create(first_name: "user5", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user5@medix.com", password: "password", password_confirmation: "password", role: "national_sales_manager", boss_id: 4, image: "http://www.carmichaelstudios.com/wp-content/uploads/2014/01/biz-12-Copy.jpg")
puts "user 5 added"

User.create(first_name: "user6", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user6@medix.com", password: "password", password_confirmation: "password", role: "sales_manager", boss_id: 5, image: "http://gamut1studios.com/blog/wp-content/uploads/2013/07/Michelle_loc.jpg")
puts "user 6 added"

User.create(first_name: "user7", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user7@medix.com", password: "password", password_confirmation: "password", role: "area_sales_manager", boss_id: 6, image: "http://www.hotel-magazine.co.uk/wp-content/uploads/2013/12/Julian.jpg")
puts "user 7 added"

User.create(first_name: "user8", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user8@medix.com", password: "password", password_confirmation: "password", role: "sales_officer", boss_id: 7, image: "https://ceridianblog.files.wordpress.com/2013/08/maurice_fernandez_retouch.jpg")
puts "user 8 added"



# Sales Managers

User.create(first_name: "user41", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user41@medix.com", password: "password", password_confirmation: "password", role: "plant_manager", boss_id: 3, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 41 added"

User.create(first_name: "user42", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user42@medix.com", password: "password", password_confirmation: "password", role: "plant_manager", boss_id: 3, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 42 added"

User.create(first_name: "user43", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user43@medix.com", password: "password", password_confirmation: "password", role: "plant_manager", boss_id: 3, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 43 added"


#Area Sales Managers



User.create(first_name: "user110", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user110@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 110 added"

User.create(first_name: "user111", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user111@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 111 added"

User.create(first_name: "user112", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user112@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 112 added"

User.create(first_name: "user113", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user113@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 113 added"

User.create(first_name: "user114", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user104@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 114 added"

User.create(first_name: "user115", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user115@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 115 added"

User.create(first_name: "user116", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user116@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 116 added"

User.create(first_name: "user117", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user117@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 117 added"

User.create(first_name: "user118", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user118@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 118 added"

User.create(first_name: "user119", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user119@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 119 added"

User.create(first_name: "user120", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user120@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 120 added"

User.create(first_name: "user121", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user121@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 121 added"

User.create(first_name: "user122", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user122@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 122 added"

User.create(first_name: "user123", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user123@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 123 added"

User.create(first_name: "user124", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user124@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 124 added"

User.create(first_name: "user125", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user125@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 125 added"

User.create(first_name: "user126", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user126@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 126 added"


# Sales Officer


User.create(first_name: "user500", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user500@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 500 added"

User.create(first_name: "user501", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user501@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 501 added"

User.create(first_name: "user502", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user502@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 502 added"

User.create(first_name: "user503", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user503@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 503 added"

User.create(first_name: "user504", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user504@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 504 added"

User.create(first_name: "user505", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user505@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 505 added"

User.create(first_name: "user506", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user506@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 506 added"

User.create(first_name: "user507", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user507@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 507 added"

User.create(first_name: "user508", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user508@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 508 added"

User.create(first_name: "user509", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user509@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 509 added"

User.create(first_name: "user510", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user510@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 510 added"

User.create(first_name: "user511", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user511@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 511 added"

User.create(first_name: "user512", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user512@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 512 added"

User.create(first_name: "user513", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user513@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 513 added"

User.create(first_name: "user514", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user514@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 514 added"

User.create(first_name: "user515", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user515@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 515 added"

User.create(first_name: "user516", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user516@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 516 added"

User.create(first_name: "user517", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user517@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 517 added"

User.create(first_name: "user518", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user518@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 518 added"

User.create(first_name: "user518", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user518@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 518 added"

User.create(first_name: "user519", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user519@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 519 added"

User.create(first_name: "user620", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user520@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 520 added"

User.create(first_name: "user521", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user521@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 521 added"

User.create(first_name: "user522", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user522@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 522 added"

User.create(first_name: "user523", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user523@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 523 added"

User.create(first_name: "user524", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user524@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 524 added"

User.create(first_name: "user525", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user525@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 525 added"

User.create(first_name: "user526", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user526@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 526 added"

User.create(first_name: "user527", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "527@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 527 added"

User.create(first_name: "user528", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user528@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 528 added"

User.create(first_name: "user529", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user529@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 529 added"

User.create(first_name: "user530", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user530@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 530 added"

User.create(first_name: "user531", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user531@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 531 added"

User.create(first_name: "user532", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user532@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 532 added"

User.create(first_name: "user533", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user533@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 533 added"

User.create(first_name: "user534", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user534@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 534 added"

User.create(first_name: "user535", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user535@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 535 added"

User.create(first_name: "user536", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user536@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 536 added"

User.create(first_name: "user537", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user537@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 537 added"

User.create(first_name: "user538", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user538@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 538 added"

User.create(first_name: "user539", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user539@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 539 added"

User.create(first_name: "user540", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user540@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 540 added"





User.create(first_name: "user12", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user12@medix.com", password: "password", password_confirmation: "password", role: "quality_control_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 12 added"

User.create(first_name: "user13", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user13@medix.com", password: "password", password_confirmation: "password", role: "quality_control_assistant", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 13 added"

User.create(first_name: "user14", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user14@medix.com", password: "password", password_confirmation: "password", role: "head_accountant", image: "http://pghpeople.com/wordpress/wp-content/uploads/2014/10/Editorial-Portrait-pittsburgh.jpg")
puts "user 14 added"

User.create(first_name: "user15", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user15@medix.com", password: "password", password_confirmation: "password", role: "assistant_accountant", image: "http://www.growthbusiness.co.uk/article_images/articledir_4748/2374043/1_fullsize.jpg")
puts "user 15 added"

User.create(first_name: "user16", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user16@medix.com", password: "password", password_confirmation: "password", role: "tablet_technician", image: "https://s-media-cache-ak0.pinimg.com/236x/2d/0f/85/2d0f851a01a5ba0a8a9aa6b9d0850e99.jpg")
puts "user 16 added"

User.create(first_name: "user17", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user17@medix.com", password: "password", password_confirmation: "password", role: "syrup_technician", image: "http://www.shannonyashcheshen.com/images/portfolio/img35p.jpg")
puts "user 17 added"

User.create(first_name: "user18", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user18@medix.com", password: "password", password_confirmation: "password", role: "tablet_coating_technician", image: "http://03bbac5.netsolhost.com/WordPress/wp-content/uploads/2014/12/Northwest_Information_Services_Kathryn_Elsesser_9-940x1412.jpg")
puts "user 18 added"

User.create(first_name: "user19", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user19@medix.com", password: "password", password_confirmation: "password", role: "extract_technician", image: "http://gamut1studios.com/blog/wp-content/uploads/2013/07/Michelle_loc.jpg")
puts "user 19 added"

User.create(first_name: "user20", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user20@medix.com", password: "password", password_confirmation: "password", role: "cosmatics_technician", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0537.jpg")
puts "user 20 added"

User.create(first_name: "user21", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user21@medix.com", password: "password", password_confirmation: "password", role: "packing_staff", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 21 added"