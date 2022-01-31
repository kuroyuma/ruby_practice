#Rubyの繰り返し処理(4.3.2)
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
puts sum

#配列の要素を削除する条件を自由に指定する(4.3.3)
a = [1, 2, 3, 1, 2, 3]
#配列から値が2の要素を削除する
a.delete(2)
puts a

b = [1, 2, 3, 1, 2, 3]
#配列から値が奇数の要素を削除する
b.delete_if do |n|
  n.odd?
end
puts b

#ブロック引数とブロック内の変数(4.3.4)
numbers.each do |i|
  sum += i
end
puts sum

