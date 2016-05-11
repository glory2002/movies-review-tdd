print "Seeding standard categories... "

comedy = Category.create(name: "Comedy")
fantay = Category.create(name: "Fantasy")
action = Category.create(name: "Action")
romance = Category.create(name: "Romance")

puts "seeded #{Category.count} categories!"

print "Seeding some games... "

Movie.create(title: "Little Miss Sunshine", category_id: 1, image: "https://en.wikipedia.org/wiki/Little_Miss_Sunshine#/media/File:Little_miss_sunshine_poster.jpg")
Movie.create(title: "The Girl Who Leapt Through Time", category_id: 1, image: "https://images3.alphacoders.com/299/2999.jpg")
Movie.create(title: "Shrek", category_id: 1, image: "http://vignette1.wikia.nocookie.net/the-frollo-show/images/8/89/941_render_shrek_3.png/revision/latest?cb=20140625091916")
Movie.create(title: "The Quiet Man", category_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/1/13/Poster_-_Quiet_Man,_The_01.jpg")

Movie.create(title: "The Lord of the Rings: The Return of the King (2003)", category_id: 2, image: "http://static.rogerebert.com/uploads/movie/movie_poster/lord-of-the-rings-the-return-of-the-king-2003/large_j6NCjU6Zh7SkfIeN5zDaoTmBn4m.jpg")
Movie.create(title: "Star Wars", category_id: 2, image: "https://cnet2.cbsistatic.com/hub/i/r/2015/11/19/a899c919-8f1d-446f-a74c-5615651677d9/thumbnail/770x433/69ca4fb7e716e784d36b08fed0dbe92f/star-wars-poster-1977.jpg")
Movie.create(title: "Harry Potter and the Deathly Hallows", category_id: 2, image: "http://vignette2.wikia.nocookie.net/harrypotter/images/6/65/Harry-Potter-and-the-Deathly-Hallows-Part-1-poster.jpg/revision/latest?cb=20101001182826")
Movie.create(title: "The Wizard of Oz", category_id: 2, image: "https://willmckinley.files.wordpress.com/2013/09/the-wizard-of-oz-1939-movie-poster.jpg")

Movie.create(title: "The Dark Knight", category_id: 3, image: "https://s-media-cache-ak0.pinimg.com/736x/8e/14/e7/8e14e72fb21f3868560cd9a7a5d7c7ab.jpg")
Movie.create(title: "The Matrix", category_id: 3, image: "https://fangirlknitsscarf.files.wordpress.com/2013/09/the-matrix-1999-wallpaper.jpg")
Movie.create(title: "The Avengers", category_id: 3, image: "http://mediamedusa.com/wp-content/uploads/2013/08/avengers.jpg")
Movie.create(title: "X-Men: Days of Future Past", category_id: 3, image: "http://www.chicagonow.com/hammervision/files/2014/05/x_men_days_of_future_past_banner-wide.jpg")

Movie.create(title: "The Best Years of Our Lives", category_id: 4, image: "https://onceuponascreen.files.wordpress.com/2014/01/best-years-of-our-lives-os-style-a-nm.jpg")
Movie.create(title: "Before Sunrise", category_id: 4, image: "https://gfx.videobuster.de/archive/v/c52vAgovidvDIQLGQuqKFLgcz0lMkawqCUyRjAyJTJGaW1hmSUyRmpwZWclMkZlqtA5ZjhlY2IzZL3uZmQ1ZWXlstC-YjcuanBnJnI9d-84/before-sunrise.jpg")
Movie.create(title: "Wings of Desire", category_id: 4, image: "http://static.rogerebert.com/uploads/movie/movie_poster/wings-of-desire-1988/large_yQI5X0stOQhVhbfZKtsnG8I7sBo.jpg")
Movie.create(title: "The Sea Inside", category_id: 4, image: "http://www.entertainmentwallpaper.com/images/desktops/movie/1700.jpg")

puts "seeded #{Movie.count} movies!"
