#計算問題、数列の練習
arr = (1..10).to_a
puts arr.inspect

#和
sum = arr.sum
puts sum

#平均
average = arr.sum.to_f / arr.size
puts average

#数列の最大値と最小値
max_value = arr.max
min_value = arr.min
puts max_value
puts min_value

#偶数抽出
evens = arr.select { |n| n.even? }
puts evens.inspect

# フィボナッチ数列
def fibonacci(n)
  sequence = [0, 1]
  (2..n-1).each do |i|
    sequence << sequence[i-1] + sequence[i-2]
  end
  sequence
end

fib_sequence = fibonacci(10)
puts fib_sequence.inspect

#階乗
def factorial(n)
  (1..n).inject(:*) || 1
end

fact_5 = factorial(5)
puts fact_5

#素数判定
def prime?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

puts prime?(7)
puts prime?(10)

#累積和
cumulative_sum = arr.each_with_object([]) { |n, acc| acc << n + (acc.last || 0) }
puts cumulative_sum.inspect