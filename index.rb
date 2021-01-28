# 任意の数までの素数を出す(今回は1000)
require 'prime'
def number(fig)
    Prime.each(fig) do |num|
        puts num
    end
end

number(1000)
# https://docs.ruby-lang.org/ja/latest/library/prime.html
puts "-------------------------------------------"

# ----------------------------------------
# 任意の数(maxNumber)までで何回その数字(total)が出力されたか？
def countNumber(maxNumber, total)
    totalNumber = total.to_s
    num = [*(1..maxNumber)].to_s
    puts num.count(totalNumber)
end
# 例)11までで何回1が出力されたか
countNumber(11, 1)
puts "-------------------------------------------"

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
puts "-------------------------------------------"

# ----------------------------------------------
# 任意の約数の合計値
def divisor(number)
  result = []
  i = 1
  while i <= number
    result << i if number % i == 0
    i += 1
  end

puts result.sum
end

divisor(4)
puts "-------------------------------------------"

# -------------------------------------------------
# 逆数和 -> 1/1...1/nの合計で9を超える
def method
  total = 0
  n = 1
  while 9 > total
    total+= (1 / n.to_f)
    n += 1
  end
  puts n
  puts total
end
method

puts '-------------------------------------------'

# --------------------------------------------
# 任意の数(今回は30)までFizzBuzz(アメリカの暇つぶし言葉遊び)
def fizzBuzz(num)
  (1..num).each do |n|
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
  end
end

fizzBuzz(30)
# https://ja.wikipedia.org/wiki/Fizz_Buzz
puts "-------------------------------------------"

# --------------------------------------------
# フィボナッチ数列のあれこれ
# 任意の項までのフィボナッチ数列とその和を出力,任意の数値がフィボナッチ数列に含まれるか判定
fib = Enumerator.new do |y|
  a = 0; b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

puts "数値を入力してください その項数までのフィボナッチ数列,その合計を出力します"
num = gets.chomp.to_i
fibo = fib.take(num)
p fibo
puts "total: #{fibo.sum}"

puts "数値を入力してください 数値がフィボナッチ数列にあるかないか調べます(100項まで)。ある場合は何項目か調べます。"
what = gets.chomp.to_i
ex = fib.take(100)
if ex.include?(what)
  puts "あります 2,3項目です" if what ==  1
  existence =  ex.index(what) + 1 # 入力された数値のインデックス番号を取得1を足してはじまりは1番とする
  puts "あります #{existence}項目です" unless what == 1
else
  puts "ありません"
end
puts "-------------------------------------------"

# 4乗的ガウス
puts (1..80).inject(0) {|result, item| result + item**4 }
# もしくは
sum = 0
(1..80).each do |n|
  sum += n**4
end
puts sum
# -------------------

