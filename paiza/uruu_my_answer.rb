line = gets.split(' ').map(&:to_i)
years = line[0]
input_year_months = line[1]
input_year_days = line[2]

$days = 0
# 1800/1/1 水曜日
# 日数計算関数
def count_days_with_months(input_months)
    (1..input_months).each do |month|
        if month == 2
            $days += 28
        elsif month ==  4 || month == 6 || month == 9 || month == 11
            $days += 30
        else
            $days += 31
        end
    end
end

(1800..years - 1).each do |year|
    # 閏年
    if year % 400 == 0
        $days += 1
    elsif year % 4 == 0 &&  year % 100 != 0
        $days += 1
    end
    count_days_with_months(12)
end

# 今年
count_days_with_months(input_year_months - 1)
$days += 1 if (years % 400 == 0 || years % 4 == 0 &&  years % 100 != 0) && input_year_months >= 3
$days += input_year_days - 1

DAYS_OF_WEEK = %w[水曜日 木曜日 金曜日 土曜日 日曜日 月曜日 火曜日]
puts DAYS_OF_WEEK[$days % 7]
