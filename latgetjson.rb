#Mengambil JSON

require 'open-uri'
require 'JSON'
require 'date'

class Infouser
    def initialize(user)
        url = "https://www.instagram.com/#{user}/?__a=1"

        json = open(url).read
        @objs = JSON.parse(json)        
    end
    def getinfo
        nama = @objs['graphql']['user']['full_name']
        jumpos = @objs['graphql']['user']['edge_owner_to_timeline_media']['count']
        jumfollow = @objs['graphql']['user']['edge_follow']['count']
        jumflowers = @objs['graphql']['user']['edge_followed_by']['count']

        puts "Nama : #{nama}"
        puts "Jumlah Postingan #{jumpos}"
        puts "Jumlah Follower #{jumfollow}" 
        puts "Jumlah followers #{jumflowers}"
    end
    def getpost
        post = @objs['graphql']['user']['edge_owner_to_timeline_media']['edges']
        # puts post
        post.each do |obj|
            puts "id_post - url_post - teks_caption - total_coment - total_like - total_shared - total_view - jenis_post - waktu_post"
            puts " ################################ ID POST ##################################### "
            puts obj['node']['id']
            puts " ################################ URL POST ##################################### "
            puts obj['node']['display_url']
            puts " ################################ CAPTION ##################################### "
            puts obj['node']['edge_media_to_caption']['edges'][0]['node']['text']
            puts " ################################ Total Coment ##################################### "
            puts obj['node']['edge_media_to_comment']['count']
            puts " ################################ Total like ##################################### "
            puts obj['node']['edge_liked_by']['count']
            puts " ################################ Total View ##################################### "
            puts obj['node']['edge_media_preview_like']['count']
            puts " ################################ Jenis Post ##################################### "
            if obj['node']['__typename']=="GraphImage"
                puts "Tipe Gambar"
            elsif obj['node']['__typename']=="GraphVideo"
                puts "Tipe Video"
            else
                puts "Tipe Slide"
            end
            
            puts " ################################ Waktu Post ##################################### "
            waktuposnya = obj['node']['taken_at_timestamp']
            puts Time.at(waktuposnya)
        end

    end
end

print "Masukan username instagram yang ingin di scraping : @"
usernamenya = gets.chomp

puts("################HASIL scapping instagram @#{usernamenya} #################")
user = Infouser.new(usernamenya)
user.getinfo()

# user.getpost()



# title = []

# objs.each do |obj|
#      title = obj['graphql']['user']['biography']
#      puts title
# end

# puts title

# puts objs[0]['arti']

# puts objs['graphql']['user']['biography']
