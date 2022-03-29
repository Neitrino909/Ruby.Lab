
def sum_dig(number)
    sum = 0
	while number != 0
		sum += (number % 10)
		number = (number / 10)
	end
	puts sum
end


def mindigit(number)
    res = 10
  while number > 0
    if res > number % 10
      res = number % 10
    end
    x /= 10
  end
  puts res
end

def maxdigit(number)
    res = 0
  while number > 0
    if res < number % 10
      res = number % 10
    end
    number /= 10
  end
  puts res
end

def mult_of_dig(number)
    res = 1
  while number > 0
    res*= number % 10
    number /= 10
  end
  puts res
end

#__________________________________________________________

def sum_div(x)   
  res = 0
  d = 2
  while d * d <= x
    if x % d == 0
      res+=d
      x /= d
    else
      d += 1
    end
  end
  if x > 1
    res+=x
  end
  puts res
end

def digit
    puts "Что делаем?
    1) Сумма цифр числа
    2) Минимальная цифра числа
    3) Максимальная цифра числа
    4) Произведение цифр числа
    5) Найти сумму простых делителей числа

    my_chose = ARGV[0]
    puts "Число?"
    my_number = ARGV[1].to_i

    case my_chose
    when "1"
        puts sum_dig(my_number)
    when "2"
        puts mindigit(my_number)
    when "3"
        puts maxdigit(my_number)
    when "4"
        puts mult_of_dig(my_number)
    when "5"
        puts sum_div(my_number)	
    else
        puts "Hello world!!!"
    end
end

digit
