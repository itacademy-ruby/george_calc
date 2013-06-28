repeat = false
begin
	puts 'Input first number' 
	first_number = gets.chomp
	puts 'Input operand'
	operand = gets.chomp
	puts 'Input second number'
	second_number = gets.chomp
	
	result = case operand
	when '+'
		first_number.to_i + second_number.to_i
	when '-'
		first_number.to_i - second_number.to_i
	when '*'
		first_number.to_i * second_number.to_i
	when '/'
		begin
			first_number.to_i / second_number.to_i
		rescue ZeroDivisionError => e 
			result = 'You can not divide by zero '
		end
	else
		"Unknow attribute: #{operand}"
	end



	p "Result = #{result}"


	puts "Do you wanna use calc again? [y/n]:"
	case gets.chomp
	when /^[yY]/
		puts 'Loading...'
	when /^[nN]/
		puts "Goodbye :)"
		repeat = true
	end
end until repeat
	