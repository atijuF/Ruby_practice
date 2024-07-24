# 1~200,000の三つゾロ目の数字の総和
def sum_special_numbers(limit)
  total_sum = 0 #合計初期化
  (1..limit).each do |num| #繰り返し処理
    num_str = num.to_s
    if num_str =~ /(\d)\1{2}/ #正規表現を使用して三つ同じ数字が連続しているかをチェック
      total_sum += num
    end
  end
  total_sum
end

limit = 200_000
result = sum_special_numbers(limit)
puts result


def generate_sequence(n):
    # 初項を設定
    sequence = [1, 2]
    # 3項目から計算開始
    for i in range(2, n):
        next_value = sequence[i - 1] + sequence[i - 2] - 1
        sequence.append(next_value)
    return sequence

# 第40項まで計算
sequence_40 = generate_sequence(40)
# 第40項を表示
sequence_40[-1]