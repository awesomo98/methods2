module Methods2
	
	def elevenish?(x)
		if(x % 11 == 0) || ((x-1) % 11 == 0)
			return true
		else
			return false
		end
	end

	def ice_cream_party(ice_cream, candy)
		if((ice_cream < 5) || (candy < 5))
			return 0
		end
		if (((ice_cream) >= (candy*2)) || ((candy) >= (ice_cream*2)))
			return 2
			else
				return 1
		end
	end
	
	# TODO - write successful_squirrel_party?
	
	# TODO - write ticket

	# TODO - write in_order?

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end