# 任意の数までの素数を出す(今回は1000)
require 'prime'
def number(fig)
    Prime.each(fig) do |num|
        puts num
    end
end

number(1000)
# https://docs.ruby-lang.org/ja/latest/library/prime.html
# ----------------------------------------
# 任意の数(maxNumber)までで何回その数字(total)が出力されたか？
def countNumber(maxNumber, total)
    totalNumber = total.to_s
    num = [*(1..maxNumber)].to_s
    puts num.count(totalNumber) 
end
# 例)11までで何回1が出力されたか
countNumber(11, 1)
# -------------------------------------------
# 世界のナベアツになり1から40まで数える
def world
    (1..40).each do |n|
        nabeatsu = n.to_s
        if n % 3 == 0 || nabeatsu.include?("3")
          puts "世界のナベアツ"
        else
          puts n
        end
    end
end

world
# ----------------------------------------------
# 任意の約数の合計値
def divisor(number)
  result = []
  i = 1
  while i <= number 
    if number % i == 0
      result << i
    end 
    i += 1
  end
 puts result.sum
end

divisor(4)
# -------------------------------------------------
# 1/1...1/nの合計で9を超える
def array(n)
    (1..n).map{|n| Rational(1,n)}.sum.to_f
end
puts array(4550)
