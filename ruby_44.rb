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

# 配列や文字列の一部を抜き出す(4.5.1)
a = [1, 2, 3, 4, 5]
# 2番目から4番目までの要素を取得する
puts a[1..3]

a = 'abcdefg'
puts a[1..3]

# n以上m以下、n以上m未満の判定をする
#不等号を使う場合
def liquid?(temprature)
  #0度以上100度未満であれば液体、と判定したい
  0 <= temprature && temprature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

#範囲オブジェクトを使う場合
def liquid?(temprature)
  (0...100).include?(temprature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

# case文で使う
def charge(age)
  case age
  #0歳から5歳までの場合
  when 0..5
    0
  #6歳から12歳までの場合
  when 6..12
    300
  #13歳から18歳までの場合
  when 13..18
    600
  #それ以外の場合
  else
    1000
  end
end
puts charge(3)
puts charge(12)
puts charge(16)
puts charge(25)
