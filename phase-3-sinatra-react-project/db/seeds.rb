puts "🌱 Seeding spices..."
Platform.destroy_all
Game.destroy_all
Review.destroy_all
Genre.destroy_all

Game.create(title:"Halo 3" , genre_id:Genre.first.id, platform_id:Platform.first.id, year:2007, img_url:"https://www.halopedia.org/Hub:Halo_3/Editions#/media/File:Halo3coverart.JPG")
Game.create(title:"Dwarf Fortress", genre_id:Genre.last.id, platform_id:Platform.last.id , year:2006, img_url:"https://e.snmc.io/i/600/w/7f9212c5a4f159f8ec9d6fff4a69e23e/10476371/dabu-dwarf-fortress-Cover-Art.jpg")
Game.create(title:"Portal" , genre_id:Genre.second.id , platform_id: Platform.third.id, year:2007, img_url:"https://www.mobygames.com/images/covers/l/130215-portal-windows-front-cover.jpg")
Game.create(title:"World of Warcraft" , genre_id:Genre.third.id , platform_id:Platform.third.id, year:2004, img_url:"https://static.wikia.nocookie.net/wowpedia/images/6/60/WoW-boxcover.jpg/revision/latest/scale-to-width-down/250?cb=20190228164118")
Game.create(title:"Stronghold Legends" , genre_id: Genre.fourth.id, platform_id:Platform.last.id , year:2006,img_url:"https://www.mobygames.com/images/covers/l/283141-stronghold-legends-windows-front-cover.jpg")
Game.create(title:"Deep Rock Galactic" , genre_id:Genre.first.id , platform_id:Platform.fourth.id , year:2018,img_url:"https://www.mobygames.com/images/covers/l/787218-deep-rock-galactic-playstation-4-front-cover.jpg")
Game.create(title:"Valheim" , genre_id:Genre.last.id, platform_id:Platform.last.id, year:2021,img_url:"https://preview.redd.it/cb6vhjj30ap61.gif?format=png8&s=7fede5f0fb30bd3aa14dfdb16eb56e8e8412dedc")
Game.create(title:"Destiny 2" , genre_id: Genre.first.id, platform_id:Platform.fourth.id, year:2017,img_url:"https://www.mobygames.com/images/covers/l/425032-destiny-2-playstation-4-front-cover.png")
Game.create(title:"Forza Horizon 5" , genre_id:Genre.fifth.id, platform_id:Platform.first.id, year:2021,img_url:"https://hips.hearstapps.com/hmg-prod/images/forzahorizon5-keyart-vert-rgb-final-1629720353.jpg")
Game.create(title:"Enter the Gungeon" , genre_id:Genre.first.id, platform_id:Platform.fourth.id , year:2016,img_url:"https://www.mobygames.com/images/covers/l/679549-enter-the-gungeon-macintosh-front-cover.png")
Game.create(title:"Madden NFL 23" , genre_id:Genre.sixth.id, platform_id:Platform.fourth.id, year:2022,img_url:"https://sm.ign.com/ign_nordic/cover/m/madden-nfl/madden-nfl-23_vcjq.jpg")


Platform.create(name:"Xbox", img_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Xbox_logo_%282019%29.svg/1200px-Xbox_logo_%282019%29.svg.png")
Platform.create(name:"Playstation 5",img_url:"https://download.logo.wine/logo/PlayStation/PlayStation-Logo.wine.png")
Platform.create(name:"Nintendo Switch",img_url:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/NintendoSwitchLogo.svg/1200px-NintendoSwitchLogo.svg.png")
Platform.create(name:"Multi-Platform",img_url:"https://static.tweaktown.com/news/6/8/68229_04_heres-list-playstation-4-game-supports-cross-play.jpg")
Platform.create(name:"PC",img_url:"https://yt3.googleusercontent.com/ytc/AMLnZu_PUnuHepXWVq0Q17Pnxk3GYPiekKHPozyJ92g33g=s900-c-k-c0x00ffffff-no-rj")

Genre.create(type:"Shooter")
Genre.create(type:"Puzzle")
Genre.create(type:"RPG")
Genre.create(type:"RTS")
Genre.create(type:"Racing")
Genre.create(type:"Sports")
Genre.create(type:"Sandbox/Survival")



# Seed your database here

puts "✅ Done seeding!"
