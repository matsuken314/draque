require './character'
require './brave'
require './monster'

brave = Brave.new(name: 'ゆうしゃ', hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: 'シドー', hp: 250, offense: 255, defense: 255)
puts "#{monster.name}があらわれた！"
while true

  brave.attack(monster)
  monster.attack(brave)

  puts '*=*=*=*=*=*=*=*=*=*=*'
  puts "【#{brave.name}】HP: #{brave.hp}"
  puts "【#{monster.name}】HP: #{monster.hp}"
  puts '*=*=*=*=*=*=*=*=*=*=*'

  break if brave.hp == 0 || monster.hp == 0
end

if brave.hp == 0
  puts "#{brave.name}はしんでしまった!"

elsif monster.hp == 0
  puts "#{monster.name}をやっつけた!"

end
