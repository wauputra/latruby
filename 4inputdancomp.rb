#belajar Input dan chomp

print "Umurnya berapa om? "
umur = gets.chomp
print "Kakinya berapa om? "
kaki = gets.chomp

umur1 = umur.to_i
kaki1 = kaki.to_i

print "Jadi umur om #{umur} dan kakinya ada #{kaki}, total #{umur1+kaki1}"
