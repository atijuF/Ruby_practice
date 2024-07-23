#計算問題、数列の練習
arr = (1..20).to_a
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

#奇数抽出
odd = arr.reject { |n| n.even? }
puts odd.inspect

#フィボナッチ数列
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

cumulative_sum = []
arr.inject(0) { |sum, n| cumulative_sum << sum + n; sum + n }
puts cumulative_sum.inspect


#等差数列を作成するメソッド
def arithmetic_sequence(first_term, common_difference, number_of_terms)
  sequence = []
  number_of_terms.times do |i|
    sequence << first_term + i * common_difference
  end
  sequence
end

#初項が1、公差が2、10項の等差数列
first_term = 1
common_difference = 2
number_of_terms = 10
sequence = arithmetic_sequence(first_term, common_difference, number_of_terms)
puts sequence.inspect

#等差数列の第n項を求めるメソッド
def nth_term_of_arithmetic_sequence(first_term, common_difference, n)
  first_term + (n - 1) * common_difference
end

#初項が1、公差が2、第5項
first_term = 1
common_difference = 2
n = 5
nth_term = nth_term_of_arithmetic_sequence(first_term, common_difference, n)
puts nth_term


#等比数列を作成するメソッド
def geometric_sequence(first_term, common_ratio, number_of_terms)
  sequence = []
  number_of_terms.times do |i|
    sequence << first_term * (common_ratio ** i)
  end
  sequence
end

#初項が2、公比が3、10項の等比数列
first_term = 2
common_ratio = 3
number_of_terms = 10
sequence = geometric_sequence(first_term, common_ratio, number_of_terms)
puts sequence.inspect

#等比数列の第n項を求めるメソッド
def nth_term_of_geometric_sequence(first_term, common_ratio, n)
  first_term * (common_ratio ** (n - 1))
end

#初項が2、公比が3、第5項
first_term = 2
common_ratio = 3
n = 5
nth_term = nth_term_of_geometric_sequence(first_term, common_ratio, n)
puts nth_term