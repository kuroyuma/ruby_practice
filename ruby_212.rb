# エイリアスメソッド(2.12.2)
#lengthもsizeも、どちらも文字数を返す
puts 'hello'.length
puts 'hello'.size

# 式(Expression)と文(Statement)(2.12.3)
#if文が値を返すので変数に代入できる
a = 
  if true
    '真です'
  else
    '偽です'
  end
puts a

#メソッドの定義も実は値（シンボル）を返している（シンボルについては第5章で）
b = def foo; end
puts b

# 擬似変数(2.12.4)
# true = 1
# puts true

# 参照の概念を理解する(2.12.5)
#aとbはどちらも同じ文字列だが、オブジェクトは別物
a = 'hello'
b = 'hello'
puts a.object_id
puts b.object_id
#cにbを代入する。bとcはどちらも同じオブジェクト
c = b
puts c.object_id
#メソッドの引数にcを渡す。引数として受け取ったdはb、cと同じオブジェクト
def m(d)
  d.object_id
end
puts m(c)
#equal?メソッドを使って同じオブジェクトかどうか確認しても良い（trueなら同じオブジェクト）
puts a.equal?(b)
puts b.equal?(c)




