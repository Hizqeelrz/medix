module UsersHelper
	def user_gender g
		if g == 0
			"Male"
		elsif g == 1
			"Female"
		else
			"N/A"
		end
	end

	def marital_status s
		if s == 0
			"single"
		elsif s == 1
			"married"
		else
			"N/A"
		end
	end

	def qualification q
		if q == 0
			"Primary"
		elsif q == 1
			"Middle"
		elsif q == 2
			"Matric"
		elsif q == 3
			"Intermediate"
		elsif q == 4
			"Graduation"
		elsif q == 5
			"Post Graduation"
		elsif q == 6
			"Phd"
		else
			"N/A"
		end
	end
end
