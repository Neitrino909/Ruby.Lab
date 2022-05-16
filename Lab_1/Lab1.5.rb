def sort_strok(s)
  v = s.split(" ")
  n = v.map{ |t| c = t[1..-2].split('').sort_by{ rand }.to_s; t[0..0] + c + t[-1..-1] }
  n.join(" ")
end

def del_strok(s)
   s.split('').sort.join
end

def kol_dig(s)
  #s.scan(/[6-9]/).size
   s.scan(/-?\d+(?:\.\d+)?/).map{|e| e.to_f}.find_all{|e| e>5}.size
end

def kir_sort(s)
  a = ("а".."я").to_a + ("А".."Я").to_a
  puts(( a - s.scan(/[а-яА-Я]/) ).to_s )
end

def join
  puts "Что делаем?
        1)Дана строка в которой записаны слова через пробел. Необходимо
          перемешать в каждом слове все символы в случайном порядке кроме
          первого и последнего.

        2)Дана строка в которой содержатся цифры и буквы. Необходимо
          расположить все цифры в начале строки, а буквы -- в конце.

        3)Дана строка. Необходимо подсчитать количество чисел в этой
          строке, значение которых больше 5

        4)Дана строка. Необходимо найти те символы кириллицы, которые
          не задействованы в данной строке.  
  "

  my_method = gets.chomp
  puts "Текст: "
  my_text = gets.chomp

  case my_method
  when "1"
    puts sort_strok(my_text)
  when "2"
    puts del_strok(my_text)
  when "3"
    puts kol_dig(my_text)
  when "4"
    puts kir_sort(my_text)
  else
    puts "Ошибка!"
  end
  my_text
end

join