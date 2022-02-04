# ブロックを使う配列のメソッド
# map/collect(4.4.1)
numbers = [1, 2, 3, 4]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
puts new_numbers

numbers = [1, 2, 3, 4, 5]
#ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map { |n| n * 10 }
puts new_numbers

# select/find_all/reject(4.4.2)
numbers = [1, 2, 3, 4, 5, 6]
#ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

numbers = [1, 2, 3, 4, 5, 6]
# 3の倍数を除外する(3の倍数以外を集める)
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three

# find/detect