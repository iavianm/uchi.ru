# 2) Есть массив
# arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]
# a) напишите выражение, которое получает массив всех ключей
# b) напишите выражение, которое получает массив всех значений
# с) напишите выражение, которое получает сумму всех значений

arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

result_keys = []
arr.each do |x|
  result_keys << x.keys
end
p result_keys.flatten

result_values = []
arr.each do |y|
  result_values << y.values
end
p result_values.flatten

sum_values = []
arr.each do |z|
  sum_values << z.values
end
p sum_values.flatten.sum