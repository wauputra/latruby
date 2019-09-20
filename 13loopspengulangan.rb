#loops dan pengurangan

bahasa = ["html", "css", "js"]

bahasa.each do |b|
    puts "nilai bahasa: #{b}"
end

puts "--------------"

bahasa.each{ |b| puts "disini juga : #{b}" }

puts "------------------"

(0..3).each do |a|
    puts "nilai i = #{a}"
end