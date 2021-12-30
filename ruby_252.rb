t1 = true
t2 = true
f1 = false
puts t1 && t2
puts t1 && f1

t1 = true
f1 = false
f2 = false
puts t1 || f1
puts f1 || f2

t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && t2 || f1 && f2

t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && (t2 || f1) && f2

t1 = true
f1 = false
puts !t1
puts !f1

t1 = true
f1 = false
puts t1 && f1
puts !(t1 && f1)

