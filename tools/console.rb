require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nina = Actor.new("Nina Dobrev")
alison = Actor.new("Alison Brie")
alexis = Actor.new("Alexis Bledel")
viola = Actor.new("Viola Davis")
sandra = Actor.new("Sandra Bullock")
kristen = Actor.new("Kristen Stewart")

elena = Character.new("Elena", nina)
diane = Character.new("Diane", alison)
rory = Character.new("Rory", alexis)
aibileen = Character.new("Aibileen", viola)
leigh = Character.new("Leigh Anne", sandra)
bella = Character.new("Bella", kristen)
joe = Character.new("Joe", viola)


help = Movie.new("The Help")
blindside = Movie.new("Blind Side")
twilight = Movie.new("Twilight")
bomovie = Movie.new("Bojack Horseman")


tvd = Show.new("The Vampire Diaries")
bojack = Show.new("Bojack Horseman")
gilmore = Show.new("Gilmore Girls")


show1 = ShowChar.new(elena, tvd)
show2 = ShowChar.new(diane, bojack)
show3 = ShowChar.new(rory, gilmore)
show4 = ShowChar.new(rory, bojack)

movie1 = MovieChar.new(aibileen, help)
movie2 = MovieChar.new(leigh, blindside)
movie3 = MovieChar.new(bella, twilight)
movie4 = MovieChar.new(diane, bomovie)
movie5 = MovieChar.new(rory, bomovie)

binding.pry
0