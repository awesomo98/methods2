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
	
	def squirrel_party?(nuts, week_day)
		if (week_day && ((40 <= nuts) && (nuts <= 60)))
			return true
		elsif (!week_day && (nuts >= 40))
			return true
		else
			return false
		end
	end
	
	# TODO - write ticket

	def in_order?(a, b, c, bOK)
		if(b > a && c > b)
			return true
		elsif(bOK && c > b)
			return true
		else 
			return false
		end
	end

	def less_by_ten?(a, b, c)
		if((a >= b + 10) || (a <= b-10))
			return true
		elsif((b >= c + 10) || (b <= c-10))
			return true
		elsif((c >= a + 10) || (c <= a-10))
			return true	
		else 
			return false
		end
	end
	
	def fizz_string(F, B, str)
		str = str[]
		if("str".byteslice(0) == "f")
			return true
		elsif("str".byteslice(-1) == "b")
			return true
		elsif(str[0])

	# TODO - write first_last_six?

	# TODO - write rotate_left

	def double23?(a,b)
		if (a == (0 || 1)) || (a != b)
			return false
		end
		if (((a && b) == 2) || ((a && b) == 3))
			return true
		end
	end

end