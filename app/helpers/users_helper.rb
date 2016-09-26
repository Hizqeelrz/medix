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
end
