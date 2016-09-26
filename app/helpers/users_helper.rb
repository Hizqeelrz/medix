module UsersHelper
	def user_gender(g)
		if g == 0
			"Male"
		elsif g == 1
			"Female"
		else
			"N/A"
		end
	end
end
