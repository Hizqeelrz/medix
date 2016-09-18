class User < ActiveRecord::Base

	enum role: [:ceo, :account_manager, :production_manager, :sales_manager]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, # :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
