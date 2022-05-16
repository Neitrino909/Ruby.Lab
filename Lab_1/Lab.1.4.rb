#  (5..10).inject {|sum, n| sum + n } 

def reverse(x)
  mn, mx = x.index(x.min), x.index(x.max)
  mn,mx = mx,mn if mn > mx
  x [mn+1...mx]=x[mn+1...mx].reverse
p x
end

def max_elem(x)
  puts x.max
  x.delete(x.max)
  puts x.max
end

def odd(x)
  x.find_all{ |elem| elem % 2 != 0 }.max
end


def indxs(arr)
  arr_min = (1...arr.size).select{ |x| arr[x] < arr[x-1] }
  indexes = "Индексы элементов, меньших левого соседа: #{arr_min}.
             Их количество: #{arr_min.size}"
  return indexes
end

def more_av_less_max(arr)
    arr = arr.select{|i| i > arr.sum/arr.length && i < arr.max}
end

def no_cikle

  puts "Что нужно найти?

    1. Переставить в обратном порядке элементы массива,
       расположенные между его минимальным и
       максимальным элементами.

    2. Найти два наибольших элемента.

    3. Найти максимальный нечетный элемент.

    4. Дан целочисленный массив. Вывести индексы элементов, которые
       меньше своего левого соседа, и количество таких чисел.

    5. Построить новый с элементами, большими, чем среднее арифметическое
       списка, но меньшими, чем его максимальное значение."

  oper = gets.chomp

  puts "Выберите способ задания массива:
    1. Ввод с клавиатуры
    2. Чтение из файла"
  method = STDIN.gets.
  chomp

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
    puts reverse(input_arr)
  when "2"
    puts max_elem(input_arr)
  when "3"
    puts odd(input_arr)
  when "4"
    puts indxs(input_arr)
  when "5"
    puts more_av_less_max(input_arr)
  else
    puts "Ошибка!"
  end
  input_arr
end

no_cikle