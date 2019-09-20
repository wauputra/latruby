#Loops

i=1

#while : sampai kondisinya benar
while i <= 5
    puts "#{i}"
    i += 1
end

puts "#################################"
#until sampai kondisinya salah

until i < 1
    puts "nilai i : #{i}"
    i -= 1
end

#for in

puts "###############angka####################"

for angka in (0..3)
    puts "Nilai angka : #{angka}"
end

#contoh array

puts "###############aray####################"

bahasa = ["html", "css", "javascript"]

for b in bahasa
    puts "Nilai bahasa : #{b}"
end