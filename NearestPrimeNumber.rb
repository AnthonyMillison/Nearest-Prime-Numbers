def primCalc(userNumber)
  itratr = 2
  while (itratr < Math.sqrt(userNumber.to_i).floor)
    if (userNumber.to_i % itratr != 0) && (itratr == Math.sqrt(userNumber.to_i).floor - 1)
      return true
    elsif (userNumber.to_i % itratr == 0)

      return false
    end
    itratr+=1
  end
end
def closestPrimeLess(input)
  while(input >= 2)
    input-=1
    if(primCalc(input))
      return input
    end
  end
end
def closestPrimeMore(input)
  while(input >= 2)
    input+=1
    if(primCalc(input))
      return input
    end
  end
end

lessPrime = 0
morePrime = 0
puts "Please enter a number to evaluate"
userNumber = gets.to_i #44
if(primCalc(userNumber.to_i))
  puts "this number is prime"
else
  puts "this number is not prime"
  lessPrime = closestPrimeLess(userNumber.to_i)
  morePrime = closestPrimeMore(userNumber.to_i)
  puts "The closest primes to this number are: #{lessPrime} < #{userNumber} < #{morePrime}"
end
