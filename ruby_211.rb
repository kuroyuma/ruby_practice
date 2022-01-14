# デフォルト値付きの引数(2.11.1)
def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

#引数が少ない
#puts greeting

#引数がちょうど
puts greeting('us')

#引数が多い
#puts greeting('us', 'japan')

def greeting(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

puts greeting
puts greeting('us')

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
puts default_args(1,2)
puts default_args(1,2,3)
puts default_args(1,2,3,4)

#システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end
def bar
  'BAR'
end
puts foo

# ?で終わるメソッド(2.11.2)
#空文字であればtrue、そうでなければfalse
puts ''.empty?
puts 'abc'.empty?

#引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at')
puts 'watch'.include?('in')

#奇数ならtrue、偶数ならfalse
puts 1.odd?
puts 2.odd?
puts 10.odd?
puts 101.odd?
puts 0.odd?

#偶数ならtrue、奇数ならfalse
puts 1.even?
puts 2.even?
puts 0.even?
puts 22.even?

#オブジェクトがnilであればtrue、そうでなければfalse
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?

#3の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(2)
puts multiple_of_three?(4)
puts multiple_of_three?(9)

# !で終わるメソッド(2.11.3)
a = 'ruby'
#upcaseだと変数aの値は変化しない
puts a.upcase
puts a
#upcase!だと変数aの値は変化する
puts a.upcase!
puts a

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
puts s
puts reverse_upcase!(s)
puts s

#下記の様に変数名に!や?を入れるとエラーが出て使えない
#odd? = 1.odd?
#upcase! = 'ruby'.upcase!