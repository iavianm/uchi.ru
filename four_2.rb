# Напишите функцию, которая имитирует работу светафора
# a) на вход она получает один из цветов в виде строки (‘red’, ‘green’, ‘yellow’ ), на выходе
# будет результат (идти, стоять или ждать)
# b) напишите это в виде консольной программы, которая не прекращает работу после
# однократного вызова, а ждет следующих запросов
# c) необязательно, но будет плюсом напишите обработку некорректных данных и
# добавьте возможность юзеру завершить работу программы

def traffic_light (color)
  case color
  when 'red'
    puts 'Стоять'
  when 'green'
    puts 'Идти'
  when 'yellow'
    puts 'Ждать'
  else
    puts 'Нет такого цвета'
  end
end

puts 'Сфетофор'
loop do
  puts
  puts 'Введите цвет (red, green, yellow), q - выйти из программы'
  user_input  = STDIN.gets.chomp.downcase
  if user_input == 'q'
    break
  end

  if user_input.scan(/\d/).empty?
    traffic_light(user_input)
  else
    puts 'Введите цвет правильно'
  end
end