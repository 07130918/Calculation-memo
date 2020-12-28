# 簡易的な真面目なプログラムからふざけたものまで自分の気になったことをメモのような形でまとめているリポジトリです　　
It is a repository that summarizes what you are interested in, from simple serious programs to playful ones, in the form of memos.　　

* Ruby

* Javascript  


例えば...  
世界のナベアツがいつかとんでもない数字まで芸をやらなくちゃいけなくなったときに調べてあげます  
これは40までですが任意の数まで可能です  

For example ...  
I will investigate when "Nabeatsu in the world(Japanese entertainer)" have to do tricks to ridiculous numbers someday  
This is up to 40, but any number is possible  
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
80までの4乗的ガウス  
I make a note not to forget what I was disappointed that I could not solve the actual problem if it was serious  
Quadruple gauss up to 80  
```
for(let i = r = 0; i < 80; r += (i++)**4);
console.log(r)
```


