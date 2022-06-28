# 3) Найдите вхождения каждого элемента в массив
# [ nil, 2, :foo, “bar”, “foo”, “apple”, “orange”, :orange, 45, nil,
#   :foo, :bar, 25, 45, :apple, “bar”, nil]
# чтобы на выходе получился Hash по типу { элемент => количество вхождений в
# массив}

arr = [nil, 2, :foo, "bar", "foo", "apple", "orange", :orange, 45, nil, :foo, :bar, 25, 45, :apple, "bar", nil]

def count_in_arr (arr)
  arr.uniq.reduce({}) { |result,el| result[el] = arr.count el ; result }
end

p count_in_arr(arr)