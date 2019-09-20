#fungsi dan parameter

def jalan()
    x = 5
    puts "coba fungsi"
    puts "lagi dan lagi #{x}"
end

jalan()

#coba ke2

def jalan1(angka)
    puts "Angkanya adalah #{angka}"
end

inputangka = gets.chomp

jalan1(inputangka)

#coba 3
def kurangkan(num1, num2)
    num = num1 + num2
    puts "Hasilnya adalah #{num}"
end

print "Masukan angka 1 : "
angka1 = gets.chomp.to_i
print "Masukan angka 2 : "
angka2 = gets.chomp.to_i

kurangkan(angka1, angka2)