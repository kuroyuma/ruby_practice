# 10進数以外の整数リテラル(2.9.1)
# 2進数
puts 0b11111111
# 8進数
puts 0377
# 16進数
puts 0xff

# ビット演算(2.9.2)
puts (~0b1010).to_s(2)
puts (0b1010 & 0b1100).to_s(2)
puts (0b1010 | 0b1100).to_s(2)
puts (0b1010 ^ 0b1100).to_s(2)
puts (0b1010 >> 1).to_s(2)
puts (0b1010 << 1).to_s(2)

# 指数表現(2.9.3)
puts 2e-3

# 数値クラスのあれこれ(2.9.4)
puts 10.class
puts 1.5.class

# 有理数リテラルを使う(3rが有理数リテラル)
r = 2 / 3r
puts r
puts r.class

# 文字列から有理数に変換する
r = '2/3'.to_r
puts r
puts r.class

# 複素数リテラルを使う(0.5iが複素数)
c = 0.3 - 0.5i
puts c
puts c.class

# 文字列から複素数にする
c = '0.3-0.5i'.to_c
puts c
puts c.class
