#konsep oop ruby
#inheritance/pewarisan

class Orang

    #harusbikin init method, namanya harus initialize
    def initialize(x)
        puts "initialize"
        @umur = x
    end

    def ambilumur
        puts "Umurnya adalah #{@umur}"
    end

    def setUmur(y)
        @umur = y
    end

end

#inheritance : mengambilan dari class lama, tapi bisa ditambahkan methodnya
class Bapak < Orang

    def sifat
        puts "Punya kumis"
    end

end


#memanggil fungsi
#bikin objek dari kelas

orang = Orang.new(21)
orang.ambilumur()

orang = Orang.new(20)
orang.setUmur(31)

puts "Inheritance"

bapak = Bapak.new(40)
bapak.ambilumur()

bapak = Bapak.new(40)
bapak.sifat()

#tingkat akses


