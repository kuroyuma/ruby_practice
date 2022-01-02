def add(a,b)
  a + b
end
puts add(1,2)

def hello_world
  'Hello,world!'
end
puts hello_world

def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting('japan')
puts greeting('us')

def greeting(country)
  return 'countryを入力してください' if country.nil?
  if  country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting(nil)
puts greeting('japan')

def greeting country
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting 'japan'
puts greeting 'us'

