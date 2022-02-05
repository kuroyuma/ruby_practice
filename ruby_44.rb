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

# find/detect(4.4.4)
numbers = [1, 2, 3, 4,]
sum = 0
numbers.each { |n| sum += n }
puts sum

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
puts sum

puts ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, s| result + s }

# &とシンボルを使ってもっと簡潔に書く(4.4.5)
puts ['ruby', 'java', 'perl'].map { |s| s.upcase }
#こう書き換えられる
puts ['ruby', 'java', 'perl'].map(&:upcase)

puts [1, 2, 3, 4, 5, 6, 7, 8, 9].select { |n| n.odd? }
#こう書き換えられる
puts [1, 2, 3, 4, 5, 6, 7, 8, 9].select(&:odd?)

#範囲(Range)
# ..を使うと5が範囲に含まれる(1以上5以下)
range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

# ...を使うと5が範囲に含まれない(1以上5未満)
range = 1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

puts (1..5).include?(1)
