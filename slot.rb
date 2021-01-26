coin = 100
point = 0
puts "-------------"
puts "残りコイン：#{coin}"
puts "ポイント数：#{point}"

while true
  coin_select = [10,20,50,"やめておく"]
  
  num1 = rand(9)
  num2 = rand(5..7)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(5..7)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(5..7)
  num9 = rand(9)

  puts "何コイン入れますか？"
  puts "0(10コイン),1(20コイン),2(50コイン),3(やめておく),"
  puts "-------------"
  coin_select_result = gets.to_i

  if coin_select_result == 3
    puts "またチャレンジしてね！"
    break
  elsif coin < coin_select[coin_select_result]
    puts "コイン足りません。またチャレンジしましょう！"
    break
  end

  puts "エンターを3回押しましょう！" 
  puts = gets
  puts "-------------"
  puts "|#{num1}| | |"
  puts "|#{num2}| | |"
  puts "|#{num3}| | |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}| |"
  puts "|#{num2}|#{num5}| |"
  puts "|#{num3}|#{num6}| |"
  puts = gets
  puts "-------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"

  if num1 == num4 && num4 == num7
    puts "上の段に#{num1}が揃いました！"
    puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
    puts "#{coin_select[coin_select_result] * 5}コイン獲得！"
    point += coin_select[coin_select_result] * 10
    coin += coin_select[coin_select_result] * 5
    puts "残りのコイン数：#{coin}"
    puts "獲得ポイント#{point}"
  elsif num2 == num5 && num5 == num8 
    puts "真ん中に#{num2}が揃いました！"
    puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
    puts "#{coin_select[coin_select_result] * 5}コイン獲得！"
    point += coin_select[coin_select_result] * 10
    coin += coin_select[coin_select_result] * 5
    puts "残りのコイン数：#{coin}"
    puts "獲得ポイント#{point}"
  elsif num3 == num6 && num6 == num9 
    puts "真ん中に#{num2}が揃いました！"
    puts "#{coin_select[coin_select_result] * 10}ポイント獲得！"
    puts "#{coin_select[coin_select_result] * 5}コイン獲得！"
    point += coin_select[coin_select_result] * 10
    coin += coin_select[coin_select_result] * 5
    puts "残りのコイン数：#{coin}"
    puts "獲得ポイント#{point}"
  else
    puts "-------------"
    puts "残念！もう一回挑戦しよう！"
    coin = coin - coin_select[coin_select_result]
    puts "残りのコイン数：#{coin}"
    puts "獲得ポイント#{point}"
  end

end