#latihan program hutang

utang = 2000

puts "Bayar Hutang loo #{utang.to_i} : "
angka = gets.chomp.to_i

if angka<utang
    puts "Dikit amat boss, kurang nih"
    utang = utang-angka
elsif angka==utang
    puts "Pas banget nih, lunas ya"
    utang = 0
else
    puts "Beeuh tajir nih"
    utang = 0
end

puts "utang ente sekarang #{utang}"