# 旅行会社簡易プログラム

# プランを選択

travel_plans = [
    {name: "沖縄", price: 10000},
    {name: "東京", price: 30000},
    {name: "大阪", price: 20000},
]


puts "旅行プランを選択してください"

travel_plans.each.with_index(1) do |travel_plan, i |
puts "No#{i}:#{travel_plan[:name]} ¥#{travel_plan[:price]}"
end


while true
    print "番号を入力："
    select_number = gets.chomp.to_i

    if select_number > 3 or select_number < 1
        puts "不正な値です。1~3の値を入力してください。"
        next # 任意の位置で繰り返したいときに使う nextがないと不正な値でもbreakして次の処理(puts)に行ってしまう
    end

    break
end

plan_number = select_number - 1
select_travel_plan = travel_plans[plan_number]
puts "旅行プラン「#{select_travel_plan[:name]}」を選択しました"


# 人数を入力
while true
    print "参加人数を入力："
    number_of_people = gets.chomp.to_i

    if number_of_people < 1
        puts "不正な値です。１以上の値を入力してください"
        next
    end
    
    break

end

puts "参加人数は#{number_of_people}です"

# 人数✖︎料金で合計額を算出

total_charge = select_travel_plan[:price] * number_of_people

# 割引処理（人数が１０人以上なら１割引、それ以外なら通常料金）

if number_of_people >= 10
    total_charge *= 0.9
end

puts "合計金額は¥#{total_charge}です"



