puts %q!He said, "Don't speak."!

something = "Hello."
puts %Q!He said, "#{something}"!

something = "Bye"
puts %!He said, "#{something}!

puts %q?He said, "Don't speak."?
puts %q{He said, "Don't speak."}

puts "Line 1,
Line 2"

puts 'Line 1,
Line 2'

a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a

def some_method
  <<-TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method

def some_method
  <<~TEXT
  これはヒアドキュメントです。
  <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method

name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT
puts a

name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT
puts a

name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん!
以下のメッセージをご覧ください。
TEXT
puts a

a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

puts sprintf('%0.3f', 1.2)
puts '%0.6f' % 1.2

puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts '%0.5f + %0.5f' % [1.2, 0.48]

puts 123.to_s
puts [10, 20, 30].join
puts 'Hi' * 10
puts String.new('hello')

puts "\u3042\u3044\u3046"

puts 'a'
puts 'abc'
puts ''
puts ?a


