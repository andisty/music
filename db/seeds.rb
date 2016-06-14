artists = [
  ["Vasco Rossi", "https://upload.wikimedia.org/wikipedia/it/archive/8/83/20100307170700!Vasco_1989.jpg"],
  ["Guns n roses", "http://assets.rollingstone.com/assets/2016/article/guns-n-roses-announce-massive-not-in-this-lifetime-tour-20160401/234746/medium_rect/1459541605/720x405-42-61374015.jpg"],
  ["Metallica", "http://www.billboard.com/files/styles/article_main_image/public/media/Metallica-1985-group-billboard-650.jpg"],
  ["Ska-p", "http://c85c7a.medialib.glogster.com/media/cb/cb33504f9bdd2d58d8f13ebb6c7beb164a02a892ca39ce07660ceb281d9ee28a/skap.jpg"],
  ["The clash", "https://pbs.twimg.com/profile_images/1031611759/theclash.jpg"]
]

 artists.each do | name, avatar |
   Artist.create( name: name, avatar: avatar )
end
