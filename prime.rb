def prime?(number)
  if number <= 1 || !number.is_a?(Integer)
    false
  elsif number == 3 || number == 2
    true
  elsif (number % 2 == 0 || number % 3 == 0) && number != 3
    false
  else
    greatest_test_divisor = Math.sqrt(number).floor
    test_divisors = Array (2..greatest_test_divisor)
    still_prime = true
    test_divisors.each do |divisor|
      if number % divisor == 0
        still_prime = false
      end
    end
    still_prime
  end
end
