arr = (1..10).to_a
# 偶数
evens = arr.select { |n| n.even? }
puts evens.inspect

#奇数抽出
odd = arr.reject { |n| n.even? }
puts odd.inspect

def factorial(n)
  (1..n).inject(:*) || 1
end

puts (000 + 111 + 222 + 333 + 444 + 555 + 666 + 777 + 888 + 999)#4995
#1
puts (1110 + 1111 + 1112 + 1113 + 1114 + 1115 + 1116 + 1117 + 1118 + 1119)#11145
puts (2111 + 3111 + 4111 + 5111 + 6111 + 7111 + 8111 + 9111)#44888
#2
puts (2220 + 2221 + 2222 + 2223 + 2224 + 2225 + 2226 + 2227 + 2228 + 2229)#22245
puts (1222 + 3222 + 4222 + 5222 + 6222 + 7222 + 8222 + 9222)#44776
#3
puts (3330 + 3331 + 3332 + 3333 + 3334 + 3335 + 3336 + 3337 + 3338 + 3339)#33345
puts (2333 + 1333 + 4333 + 5333 + 6333 + 7333 + 8333 + 9333)#44664
#4
puts (4440 + 4441 + 4442 + 4443 + 4444 + 4445 + 4446 + 4447 + 4448 + 4449)#44445
puts (2444 + 3444 + 1444 + 5444 + 6444 + 7444 + 8444 + 9444)#44552

puts (11145 + 22245 + 33345 + 44445 + 55545 + 66645 + 77745 + 88845 + 99945)
puts (44888 + 44776 + 44664 + 44552 + 44440 + 44328 + 44212 + 44100 + 43988)



[1234567890]
[200000]
[000,111,222,333,444,555,666,777,888,999][10][55]
[1110,1111,1112..1119][10]
[2111,3111,4111,5111,6111,][9]
[2220,2221..2229][10]
[1222,3222,4222..9222][9]
[2220,2222,2223,2224..2229]

[1222,1333,]
[2111,3111,4111..9111]
[100011,100111,101111,111110,111100,111000,110000,]
