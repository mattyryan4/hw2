# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
Movie.destroy_all
Person.destroy_all
Role.destroy_all

Person1 = Person.new 
Person1.name = "Christopher Nolan"
Person1.save 

Person2 = Person.new 
Person2.name = "Christian Bale"
Person2.save

Person3 = Person.new
Person3.name = "Michael Caine"
Person3.save 

Person4 = Person.new 
Person4.name = "Liam Neeson"
Person4.save 

Person5 = Person.new 
Person5.name = "Katie Holmes"
Person5.save 

Person6 = Person.new 
Person6.name = "Gary Oldman"
Person6.save

Person7 = Person.new
Person7.name = "Heath Ledger"
Person7.save 

Person8 = Person.new
Person8.name = "Aaron Eckhart"
Person8.save 

Person9 = Person.new 
Person9.name = "Maggie Gyllenhaal"
Person9.save 

Person10 = Person.new 
Person10.name = "Tom Hardy"
Person10.save 

Person11 = Person.new 
Person11.name = "Joseph Gordon-Levitt"
Person11.save 

Person12 = Person.new 
Person12.name = "Anne Hathaway"
Person12.save 

#movies table data insert 
Movie1 = Movie.new
Movie1.title = "Batman Begins"
Movie1.year_released = 2005 
Movie1.rated = "PG-13"
Movie1.person_id = person1.id
Movie1.save 

Movie2 = Movie.new
Movie2.title = "The Dark Knight"
Movie2.year_released = 2008 
Movie2.rated = "PG-13"
Movie2.person_id = person1.id
Movie2.save 

Movie3 = Movie.new
Movie3.title = "The Dark Knight Rises"
Movie3.year_released = 2012 
Movie3.rated = "PG-13"
Movie3.person_id = person1.id
Movie3.save 

#roles table data insert 
role1 = Role.new 
role1.character_name = "Bruce Wayne"
role1.movie_id = movie1.id 
role1.person_id = person2.id 
role1.save 

role2 = Role.new 
role2.character_name = "Alfred"
role2.movie_id = movie1.id 
role2.person_id = person3.id 
role2.save 

role3 = Role.new 
role3.character_name = "Ra's Al Ghul"
role3.movie_id = movie1.id 
role3.person_id = person4.id 
role3.save 

role4 = Role.new 
role4.character_name = "Rachel Dawes"
role4.movie_id = movie1.id 
role4.person_id = person5.id 
role4.save 

role5 = Role.new 
role5.character_name = "Comissioner Gordon"
role5.movie_id = movie1.id 
role5.person_id = person6.id 
role5.save 

role6 = Role.new 
role6.character_name = "Bruce Wayne"
role6.movie_id = movie2.id 
role6.person_id = person2.id 
role6.save 

role7 = Role.new 
role7.character_name = "Joker"
role7.movie_id = movie2.id 
role7.person_id = person7.id 
role7.save 

role8 = Role.new 
role8.character_name = "Harvey Dent"
role8.movie_id = movie2.id 
role8.person_id = person8.id 
role8.save 

role9 = Role.new 
role9.character_name = "Alfred"
role9.movie_id = movie2.id 
role9.person_id = person3.id 
role9.save 

role10 = Role.new 
role10.character_name = "Rachel Dawes"
role10.movie_id = movie2.id 
role10.person_id = person9.id 
role10.save 

role11 = Role.new 
role11.character_name = "Bruce Wayne"
role11.movie_id = movie3.id 
role11.person_id = person2.id 
role11.save 

role12 = Role.new 
role12.character_name = "Comissioner Gordon"
role12.movie_id = movie3.id 
role12.person_id = person6.id 
role12.save 

role13 = Role.new 
role13.character_name = "Bane"
role13.movie_id = movie3.id 
role13.person_id = person10.id 
role13.save 

role14 = Role.new 
role14.character_name = "John Blake"
role14.movie_id = movie3.id 
role14.person_id = person11.id 
role14.save 

role15 = Role.new 
role15.character_name = "Selina Kyle"
role15.movie_id = movie3.id 
role15.person_id = person12.id 
role15.save 

movies = Movie.all 
roles = Role.all 

puts "movies"
puts "======"
puts ""

for movie in movies 
    director = Person.where({id: movie.person_id}) [0]
    puts "#{movie.title} #{movie.year_released} #{movie.rated} #{movie.person_id}"
end

puts ""
puts "movies"
puts "======"
puts ""

for role in roles 
    movie = movie.where({id: role.movie_id}) [0]
    person = person.where({id: role.person_id}) [0] 
    puts "#{movie.title} #{person.name} #{role.character_name}"
end