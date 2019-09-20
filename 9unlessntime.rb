#Unless jika salah dan times

3.times do

    print "masukan angka : "
    angka = gets.chomp.to_i

    unless angka == 9
        puts "didalam unless"
    else
        puts "diluar unless"
    end

end