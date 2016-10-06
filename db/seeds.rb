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
area_punjab = ["lahore","rawalpindi","faisalabad","multan","dera_ghazi_khan","rahim_yar_khan","sahiwal","gujranwala","gujrat"]
area_kpk = ["dera_ismail_khan","peshawar","abbotabad","sawat","gilgit_baltishtan"]
area_sindh_balochistan = ["hydrabad","sukkar","larkana","nawabshah","karachi"]
province.each do |p|
  province = Province.create(name: p)
  case p
  when "punjab"
    area_punjab.each do |a|
      area = Area.create(name: a, province_id: province.id)
      case area
      when "lahore"
        ["lahore", "kasur", "sheikhupura", "nankana sahib"].each {|c| City.create(name: c, area_id: area.id)}
      when "rawalpindi"
        ["rawalpindi", "attock", "murree", "chakwal", "taxila"].each {|c| City.create(name: c, area_id: area.id)}
      when "faisalabad"
        ["faisalabad", "sargodha", "jhang", "toba tek singh", "khoshaab", "chinyot"].each {|c| City.create(name: c, area_id: area.id)}
      when "multan"
        ["multan", "khanewal", "muzafar_garh", "vehari"].each {|c| City.create(name: c, area_id: area.id)}
      when "rahim yar khan"
        ["rahim yar khan", "sadiqabad", "bahawalpur", "lodhran"].each {|c| City.create(name: c, area_id: area.id)}
      when "dera ghazi khan"
        ["dera ghazi khan", "layyah", "taunsa", "raajan pur"].each {|c| City.create(name: c, area_id: area.id)}
      when "gujranwala"
        ["gujranwala", "narowal", "sialkot", "wazirabad"].each {|c| City.create(name: c, area_id: area.id)}
      when "gujrat"
        ["gujrat", "mandi bahauddin", "jehlum", "mirpur"].each {|c| City.create(name: c, area_id: area.id)}
      when "sahiwal"
        ["sahiwal", "okara", "pakpattan", "bahawal nagar"].each {|c| City.create(name: c, area_id: area.id)}
      end
    end
  when "kpk"
    area_kpk.each do |a|
      area = Area.create(name: a, province_id: province.id)
      case a
      when "peshawar"
        ["baajor agency", "char sadda", "mardan", "noshehra", "kohat", "para chanaar"].each {|c| City.create(name: c, area_id: area.id)}
      when "abbotabad"
        ["manshera", "batgram", "muzafarabad", "haripur hazara"].each {|c| City.create(name: c, area_id: area.id)}
      when "sawat"
        ["bunair", "shangla", "taimer gran", "butkhaila", "upper dir"].each {|c| City.create(name: c, area_id: area.id)}
      when "dera ismail khan"
        ["bhakkar", "mianwali", "bannu", "lucky marwat"].each {|c| City.create(name: c, area_id: area.id)}
      when "gilgit baltistan"
        ["basham", "sakardu", "gilgit"].each {|c| City.create(name: c, area_id: area.id)}
      end
    end
  when "sindh_balochistan"
    area_sindh_balochistan.each do |a|
      area = Area.create(name: a, province_id: province.id)
      case a
      when "hydrabad"
        ["hydrabad", "mirpur khaas", "tando adam", "badin"].each {|c| City.create(name: c, area_id: area.id)}
      when "sukkhar"
        ["sukkhar", "khair pur", "ghotki", "kashmor"].each {|c| City.create(name: c, area_id: area.id)}
      when "larkana"
        ["larkana", "dadu", "jacobabad"].each {|c| City.create(name: c, area_id: area.id)}
      when "nawabshah"
        ["nawabshah", "noshehro feroz", "saanhgar"].each {|c| City.create(name: c, area_id: area.id)}
      when "karachi"
        ["karachi city1", "karachi city2", "karachi city3"].each {|c| City.create(name: c, area_id: area.id)}
      end
    end
  end
end


User.delete_all
User.create(first_name: "user1", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4,   email: "user1@medix.com", password: "password", password_confirmation: "password", role: "ceo", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0543.jpg")
puts "user 1 added..."

User.create(first_name: "user2", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user2@medix.com", password: "password", password_confirmation: "password", role: "director_marketing", boss_id: 1, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0537.jpg")
puts "user 2 added..."

User.create(first_name: "user3", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user3@medix.com", password: "password", password_confirmation: "password", role: "managing_director", boss_id: 1, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 3 added..."

User.create(first_name: "user4", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user4@medix.com", password: "password", password_confirmation: "password", role: "marketing_manager", boss_id: 2, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 4 added..."

User.create(first_name: "user5", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user5@medix.com", password: "password", password_confirmation: "password", role: "national_sales_manager", boss_id: 4, image: "http://www.carmichaelstudios.com/wp-content/uploads/2014/01/biz-12-Copy.jpg")
puts "user 5 added..."

User.create(first_name: "user6", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user6@medix.com", password: "password", password_confirmation: "password", role: "sales_manager", boss_id: 5, image: "http://gamut1studios.com/blog/wp-content/uploads/2013/07/Michelle_loc.jpg")
puts "user 6 added..."

User.create(first_name: "user7", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user7@medix.com", password: "password", password_confirmation: "password", role: "area_sales_manager", boss_id: 6, image: "http://www.hotel-magazine.co.uk/wp-content/uploads/2013/12/Julian.jpg")
puts "user 7 added..."

User.create(first_name: "user8", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user8@medix.com", password: "password", password_confirmation: "password", role: "sales_officer", boss_id: 7, image: "https://ceridianblog.files.wordpress.com/2013/08/maurice_fernandez_retouch.jpg")
puts "user 8 added..."

User.create(first_name: "user9", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user9@medix.com", password: "password", password_confirmation: "password", role: "plant_manager", boss_id: 3, image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 9 added..."

User.create(first_name: "user10", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user10@medix.com", password: "password", password_confirmation: "password", role: "production_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 10 added..."

User.create(first_name: "user11", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user11@medix.com", password: "password", password_confirmation: "password", role: "production_incharge", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 11 added..."

User.create(first_name: "user12", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user12@medix.com", password: "password", password_confirmation: "password", role: "quality_control_manager", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2012/05/bw-photograph-portrait.jpg")
puts "user 12 added..."

User.create(first_name: "user13", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user13@medix.com", password: "password", password_confirmation: "password", role: "quality_control_assistant", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 13 added..."

User.create(first_name: "user14", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user14@medix.com", password: "password", password_confirmation: "password", role: "head_accountant", image: "http://pghpeople.com/wordpress/wp-content/uploads/2014/10/Editorial-Portrait-pittsburgh.jpg")
puts "user 14 added..."

User.create(first_name: "user15", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user15@medix.com", password: "password", password_confirmation: "password", role: "assistant_accountant", image: "http://www.growthbusiness.co.uk/article_images/articledir_4748/2374043/1_fullsize.jpg")
puts "user 15 added..."

User.create(first_name: "user16", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user16@medix.com", password: "password", password_confirmation: "password", role: "tablet_technician", image: "https://s-media-cache-ak0.pinimg.com/236x/2d/0f/85/2d0f851a01a5ba0a8a9aa6b9d0850e99.jpg")
puts "user 16 added..."

User.create(first_name: "user17", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user17@medix.com", password: "password", password_confirmation: "password", role: "syrup_technician", image: "http://www.shannonyashcheshen.com/images/portfolio/img35p.jpg")
puts "user 17 added..."

User.create(first_name: "user18", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user18@medix.com", password: "password", password_confirmation: "password", role: "tablet_coating_technician", image: "http://03bbac5.netsolhost.com/WordPress/wp-content/uploads/2014/12/Northwest_Information_Services_Kathryn_Elsesser_9-940x1412.jpg")
puts "user 18 added..."

User.create(first_name: "user19", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user19@medix.com", password: "password", password_confirmation: "password", role: "extract_technician", image: "http://gamut1studios.com/blog/wp-content/uploads/2013/07/Michelle_loc.jpg")
puts "user 19 added..."

User.create(first_name: "user20", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user20@medix.com", password: "password", password_confirmation: "password", role: "cosmatics_technician", image: "http://www.piranhaphotography.com/blog/wp-content/uploads/2010/05/employee-photographer-powerscourt-0537.jpg")
puts "user 20 added..."

User.create(first_name: "user21", last_name: "Robert", gender: 0, dob: "1980-05-20", nic: "34101-0753043-", address: "323-D Al Rahman Garden", city: "Lahore", state: "Punjab", phone: "042-37189878", mobile: "0665-0404600", joining_date: "2000-02-24", marital_status: 0, basic_salary: 45000, qualification: 4, email: "user21@medix.com", password: "password", password_confirmation: "password", role: "packing_staff", image: "http://208.76.82.111/~jopjwepa/wp-content/uploads/2013/08/Gazzoli-19632001.jpg")
puts "user 21 added..."