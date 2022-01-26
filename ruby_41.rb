#RGBカラーの変換プログラムの実行例
# puts to_hex(0, 0, 0)
# puts to_hex(255, 255, 255)
# puts to_hex(4, 60, 120)
# puts to_ints('#000000')
# puts to_ints('#ffffff')
# puts to_ints('#043c78')


#配列(4.2)
a = [1, 2, 3]
puts a[0]
puts a[1]
puts a[2]
puts a.size
puts a.length

#要素の変更、追加、削除
a[1] = 20
puts a
a[4] = 50
puts a

a = [1, 2, 3]
a.delete_at(1)
puts a

#配列を使った多重代入
a, b = [1, 2]
puts a
puts b

c, d = [10]
puts c
puts d

puts 14.divmod(3)

quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"
 