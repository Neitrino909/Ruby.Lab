
#1.1
puts "Hello, World!"
print "Hello, World!" #Однострочный комментарий
=begin

Многострочный
			 комментарий	

=end

#1.2

"Введите свое имя: "
input_name = ARGV[0]
puts "Привет, #{input_name}"

#1.3
input = STDIN.gets
name = input.chomp
puts "#{name}, какой твой любимый язык?"
lang = STDIN.gets.downcase.chomp

case lang
when "ruby"
  puts "бе, подлиза"
when "python"
  puts "Да здравствует питон!"
  puts "Скоро будет ruby"
when "html"
  puts "Осуждаю"
  puts "Скоро будет ruby"
when "c++"
  puts "Земля тебе бетоном"
  puts "Скоро будет ruby"
else
  "А шо тогда?"
end

#1.4
puts "Какую команду вы хотите выполнить? ruby или ОС?"
input_command = gets.chomp

case input_command
when "OC"
  puts system "#{STDIN.gets.chomp}"    #echo "hello world"
when "ruby"
  puts system "ruby -e #{STDIN.gets.chomp}"
end
