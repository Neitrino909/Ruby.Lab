def method_len(mass)#Упорядочить по длинне строки
return mass.sort{|x,y|x.size<=>y.size}
end

def method_kolwo_slow(mass)#Упорядочить по количеству слов в строке.
return mass.sort{|x,y| x.scan(/[a-zA-ZА-Яа-я]/).size<=>y.scan(/[a-z]|[A-Z]|[А-Я]|[а-я]/).size}
end

def method_7(mass)#В порядке увеличения разницы между количеством сочетаний «гласная-согласная» и «согласная-гласная» в строке
   mass.sort_by{|x| (x.scan(/[йцкнгшщзхъфвпрлджчсмтьб]{1}[ёеыаоэяию]{1}/).size)**2}
end

args = File.open("input.txt","r"){ |file| file.read }.split("\n")
  puts eval ("method_kolwo_slow(#{args})")