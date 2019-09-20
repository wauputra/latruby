#tipe data hashes kadang hashmap, dictionary
#mirip array tapi bedanya kita harus nentuin kunci/indexnya

bahasa = {
    "satu" => "html",
    "dua" => "java",
    "tiga" => "js"
}

puts bahasa

puts "..................end..................."

puts "Bahasa : #{bahasa['satu']} "

bahasa.each do | kiri, kanan |
    puts "kuncinya: #{kiri} 
    dan nilainya #{kanan}"
end