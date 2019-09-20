#Array

angka = [1,2,3]
bahasa = ["inggris","Indonesia","alien","Jawa"]

puts angka
puts bahasa

puts "Pertama : "+bahasa.first
puts "terakhir : "+bahasa.last

puts "#######END##############"

#drop
puts "2 pertama : #{bahasa.take(2)}"
puts "Jumlah array : #{bahasa.count}"
puts "length array : #{bahasa.length}"

bahasa.push("Elang") #masukin diakhir
bahasa.unshift("Hewan") #masukin diawal
bahasa.insert(2, "Jangkrik") #memasukan setelah ke 2

puts bahasa

puts "#######END##############"

#Cara mengeluarkan nilai

puts "Ngeluarin nilai #{bahasa.pop}" #menghapus element terakhir
puts bahasa

puts "#######END##############"

puts "Array ke 3 adalah #{bahasa[2]}"