class StringAddition
	def string_calculator(str)
		num = str.gsub(/\n/, ",").split(/,/)
		l = num.length - 1
		sum = 0
		(0..l).each do |i|
			if num[i].include?(';')
				num[i] = string_calculator(num[i].gsub(';', ','))
			end
			if num[i].to_i < 0
				return ("Negative numbers not allowed #{num[i]}")
		  end
		  sum = sum + num[i].to_i
		end
		return sum
	end

	a = StringAddition.new
	#b = a.string_calculator("//;\n1;2;4;8" )
	#b= a.string_calculator('95, -4')
  # print b
end