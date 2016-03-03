# Calculate a Grade

# I worked on this challenge with Elizabeth Alexander.

# Your Solution Below
def get_grade(avg)
	if avg >= 90 && avg <= 100
		return "A"
	elsif avg >= 80 && avg < 90
		return "B"
	elsif avg >= 70 && avg < 80
		return "C"
	elsif avg >= 60 && avg < 70
		return "D"
	else
	    return "F" 
	end	
end
get_grade(70)