#現在時刻
current_time = Time.now
puts current_time

#現在の日時
current_time = Time.now

#1時間後
one_hour_later = current_time + (60 * 60)
puts one_hour_later

#1日前
one_day_earlier = current_time - (60 * 60 * 24)
puts one_day_earlier

#2つの時間の差を計算
time1 = Time.new(2024, 7, 19, 10, 0, 0)
time2 = Time.new(2024, 7, 19, 12, 30, 0)

time_difference = time2 - time1
puts time_difference
puts time_difference / 60 / 60


require 'date'

current_date = Date.today
puts current_date

# 現在の日付
current_date = Date.today

# 10日後
ten_days_later = current_date + 10
puts ten_days_later

# 1ヶ月後
one_month_later = current_date >> 1  # >> は月を加算
puts one_month_later

# 1ヶ月前
one_month_earlier = current_date << 1  # << は月を減算
puts one_month_earlier


current_datetime = DateTime.now
puts current_datetime

# 現在の日時
current_datetime = DateTime.now

# 10日後
ten_days_later = current_datetime + 10
puts ten_days_later

# 1時間後
one_hour_later = current_datetime + (1.0 / 24)
puts one_hour_later

in_minuts = 90.0 # 時間に変換したい分
out_hour = 0.0 # 変換した時間部分
out_minuts = 0.0 # 変換した分部分

out_hour = in_minuts / 60 # 時間をとるため、60で割った商を得る……(1)

out_hour = out_hour.floor # 商だけ残すために小数点以下を切り捨てる……(3)

out_minutes = (in_minuts % 60) / 60 # 余りの分を取得する……(2)

puts (out_hour + out_minutes)