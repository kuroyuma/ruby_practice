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

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  #sum_valueはブロック内で初めて登場した変数なので、ブロック内でのみ有効
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
#ブロックの外に出ると、sum_valueは参照できない
#puts sum_value

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  #sumはブロックの外で作成されたので、ブロック内部でも参照可能
  sum += sum_value
end

numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100
#ブロックの外にもsum_valueはあるが、ブロック内ではブロック引数のsum_valueが優先される
numbers.each do |sum_value|
  sum += sum_value
end
puts sum