require 'minitest/autorun'
require '/home/developers-computer/Desktop/incubyte_assignment/add_string.rb'
require 'minitest/spec'
require 'byebug'

describe 'first calculate the addition of string' do 
	it 'return 0 if blank string is passed' do 
		result = StringAddition.new.string_calculator('')
		assert_equal(0, result)
	end
	it 'return addition of string integers in single integer is passed' do 
		result = StringAddition.new.string_calculator('1')
		assert_equal(1, result)
	end
	it 'return addition of string integers' do 
		result = StringAddition.new.string_calculator('1,5')
		assert_equal(6, result)
	end
	it 'return addition of string integers if integers are given in next lines.' do 
		result = StringAddition.new.string_calculator('4;95;3')
		assert_equal(102, result)
	end
	it 'return negative numbers are not allowed if given number inside string is negative' do 
		result = StringAddition.new.string_calculator('14,-5,91')
		value = "Negative numbers not allowed -5"
		assert_equal( value, result)
	end 
end 