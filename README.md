# 簡易的な真面目なプログラムからふざけたものまで自分の気になったことをメモのような形でまとめているリポジトリです

* Ruby 2.5.1 フレームワーク Rails 5.2.4.4  

* Javascript  

* 開発環境 AWS EC2

例えば...  
世界のナベアツがいつかとんでもない数字まで芸をやらなくちゃいけなくなったときに調べてあげます  
これは40までですが任意の数まで可能です  
```
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
```
真面目なものだと実際の問題で解けなくて悔しかったものを忘れないようにメモしています  
4乗的ガウス  
```
for(let i = r = 0; i < 80; r += (i++)**4);
console.log(r)
```


