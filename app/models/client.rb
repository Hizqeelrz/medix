# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  email      :string
#  website    :string
#  company    :string
#  address    :string
#  city       :string
#  state      :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Client < ActiveRecord::Base
end
