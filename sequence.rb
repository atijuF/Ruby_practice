#計算問題、数列の練習
arr = (1..10).to_a
puts arr.inspect

#和
sum = arr.sum
puts sum

#平均
average = arr.sum.to_f / arr.size
puts average

#数列の最大値と最小値を取得
max_value = arr.max
min_value = arr.min
puts max_value
puts min_value