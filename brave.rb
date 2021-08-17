require './character'
class Brave < Character
  def attack(monster)
    puts 'ゆうしゃの攻撃!'
    damage = @offense - (monster.defense / 2)
    puts "#{monster.name}に#{damage}のダメージを与えた!"
    monster.hp -= (@offense - (monster.defense / 2))
    monster.hp = 0 if monster.hp <= 0
  end
end
