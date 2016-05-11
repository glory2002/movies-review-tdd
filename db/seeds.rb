print "Seeding standard categories... "

comedy = Category.create(name: "Comedy")
fantay = Category.create(name: "Fantasy")
action = Category.create(name: "Action")
romance = Category.create(name: "Romance")

puts "seeded #{Category.count} categories!"

print "Seeding some games... "

Movie.create(title: "Little Miss Sunshine", category: comedy)
Movie.create(title: "The Girl Who Leapt Through Time", category: comedy)
Movie.create(title: "Shrek", category: comedy)
Movie.create(title: "The Quiet Man", category: comedy)

Movie.create(title: "The Lord of the Rings: The Return of the King (2003)", category: fantasy)
Movie.create(title: "Star Wars", category: fantasy)
Movie.create(title: "Harry Potter and the Deathly Hallows", category: fantasy)
Movie.create(title: "The Wizard of Oz", category: fantasy)

Movie.create(title: "The Dark Knight", category: action)
Movie.create(title: "The Matrix", category: action)
Movie.create(title: "The Avengers", category: action)
Movie.create(title: "X-Men: Days of Future Past", category: action)

Movie.create(title: "The Best Years of Our Lives", category: romance)
Movie.create(title: "Before Sunrise", category: romance)
Movie.create(title: "Wings of Desire", category: romance)
Movie.create(title: "The Sea Inside", category: romance)

puts "seeded #{Movie.count} movies!"
