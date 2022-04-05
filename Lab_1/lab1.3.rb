arr = [1, 2, 3, 4, 5]

def sum_dig(x)
  res = 0
  x.each do |i|
    res += i
  end
  res
end


def mult_of_dig(x)
  res = 1
  x.each do |i|
    res *= i
  end
  res
end


def mindigit(x)
  res = x[0]
  x.each do |i|
    if res > i
      res = i
    end
  end
  res
end


def maxdigit(x)
  res = x[0]
  for i in x do
    if res < i
      res = i
    end
  end
  res
end


def str_ing

  puts "Что нужно найти?
    1. Сумма
    2. Произведение
    3. Максимум
    4. Минимум"
  oper = gets.chomp

  puts "Выберите способ задания массива:
    1. Ввод с клавиатуры
    2. Чтение из файла"
  method = STDIN.gets.chomp

  input_arr = Array.new

  case method
  when "1"
    input_arr = gets.chomp.split.map(&:to_i)
  when "2"
    puts "Введите адрес файла: " # C:\Users\MrNeitrino\Desktop\Lab_1\input.txt
    file = gets.chomp
    file_arr = IO.read(file)
    input_arr = file_arr.split.map(&:to_i)
  else
    puts "Ошибка"
  end


  case oper
  when "1"
    puts sum_dig(input_arr)
  when "2"
    puts mult_of_dig(input_arr)
  when "3"
    puts mindigit(input_arr)
  when "4"
    puts maxdigit(input_arr)
  else
    puts "Ошибка!"
  end
  input_arr
end

str_ing
