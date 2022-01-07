# &&や||の戻り値と評価を終了するタイミング(2.10.1)
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts false || nil
puts nil || false || 2 || 3

# 優先順位が低いand,or,not(2.10.2)
t1 = true
f1 = false
puts !f1 || t1
puts not(f1 || t1)

t1 = true
t2 = true
f1 = false
puts t1 || t2 && f1
puts (t1 or t2) and f1

# unless文(2.10.3)
status = 'error'
if status != 'ok'
  puts '何か異常があります'
end

status = 'error'
unless status == 'ok'
  puts '何か異常があります'
end

status = 'ok'
unless status == 'ok'
  puts '何か異常があります'
else
  puts '正常です'
end

status = 'error'
message =
  unless status == 'ok'
    '何か異常があります'
  else
    '正常です'
  end
puts message

# case文(2.10.4)
country = 'italy'
#if文を使う場合
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end

#case文の場合
case country
when 'japan'
  puts 'こんにちは'
when 'us'
  puts 'Hello'
when 'italy'
  puts 'ciao'
else
  puts '???'
end

# when節に複数の値を指定する
country = 'アメリカ'
case country
when 'japan', '日本'
  puts 'こんにちは'
when 'us', 'アメリカ'
  puts 'Hello'
when 'italy', 'イタリア'
  puts 'ciao'
else
  puts '???'
end

country = 'italy'
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'ciao'
  else
    '???'
  end
puts message

# 条件演算子(三項演算子)(2.10.5)
n = 11
if n > 10
  puts '10より大きい'
else
  puts '10以下'
end

n = 11
message = n > 10 ? '10より大きい' : '10以下'
puts message