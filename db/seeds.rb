artists = [
  ["Vasco Rossi", "https://upload.wikimedia.org/wikipedia/it/archive/8/83/20100307170700!Vasco_1989.jpg"],
  ["Guns n roses", "http://assets.rollingstone.com/assets/2016/article/guns-n-roses-announce-massive-not-in-this-lifetime-tour-20160401/234746/medium_rect/1459541605/720x405-42-61374015.jpg"],
  ["Metallica", "http://www.billboard.com/files/styles/article_main_image/public/media/Metallica-1985-group-billboard-650.jpg"],
  ["Ska-p", "http://c85c7a.medialib.glogster.com/media/cb/cb33504f9bdd2d58d8f13ebb6c7beb164a02a892ca39ce07660ceb281d9ee28a/skap.jpg"],
  ["The clash", "https://pbs.twimg.com/profile_images/1031611759/theclash.jpg"]
]


artist_songs = {}

artist_songs["Metallica"] = ["Nothing else matter", "...And justice for all", "Master of puppets", "The unforgiven"]
artist_songs["Ska-p"] = ["El vals del obrero", "La mosca cojonera", "El gato Lopez", "Cannabis"]
artist_songs["Vasco Rossi"] = ["Sally", "C'e chi dice no", "Stupendo", "Valium"]
artist_songs["Guns n roses"] = ["November rain", "Sweet child o' mine", "Paradise city", "Patience"]
artist_songs["The clash"] = ["Should I stay or should I go", "Train in vain", "Rock the casbah"]


 artists.each do | name, avatar |
   Artist.create( name: name, avatar: avatar )
end

artist_songs.each do | artist_name, songs |
   artist = Artist.find_by( name: artist_name )

   songs.each do | title |
      Song.create( title:title, artist_id: artist.id )
   end
end
