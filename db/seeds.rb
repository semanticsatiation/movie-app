User.create!([
  {name: "Benjamin C.", email: "admin@gmail.com", password_digest: "$2a$12$z.2E8ija8YxvDKwcStmQzu04NUQx/yK79o3b0YXKyftqJ/GI50WE.", username: "ben123", admin: true}
])

Genre.create!([
  {category: "action", image_file_name: "action.jpg"},
  {category: "thriller", image_file_name: "thriller.jpg"},
  {category: "horror", image_file_name: "horror.jpg"},
  {category: "drama", image_file_name: "drama.jpg"},
  {category: "comedy", image_file_name: "comedy.jpg"},
  {category: "sci-fi", image_file_name: "science_fiction.jpg"},
  {category: "fantasy", image_file_name: "fantasy.jpg"},
  {category: "romance", image_file_name: "romance.jpg"},
  {category: "crime", image_file_name: "crime.jpg"},
  {category: "adventure", image_file_name: "adventure.jpg"},
  {category: "war", image_file_name: "war.jpg"},
])

Movie.create!([
  {title: "Iron Man", rating: "PG-13", total_gross: "318412101.0", description: "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", released_on: "2008-05-02", cast: "Robert Downey Jr., Terrence Howard, Jeff Bridges, Gwyneth Paltrow, Leslie Bibb", director: "Jon Favreau", duration: "2h 6m", image_file_name: "iron_man.jpg", trailer: "https://www.youtube.com/embed/8hYlB38asDY", slug: "iron-man"},
  {title: "Batman", rating: "PG-13", total_gross: "533345358.0", description: "Having witnessed his parents' brutal murder as a child, millionaire philanthropist Bruce Wayne fights crime in Gotham City disguised as Batman, a costumed hero who strikes fear into the hearts of villains. But when a deformed madman who calls himself \"The Joker\" seizes control of Gotham's criminal underworld, Batman must face his most ruthless nemesis ever while protecting both his identity and his love interest, reporter Vicki Vale.", released_on: "1989-06-23", cast: "Michael Keaton, Jack Nicholson, Kim Basinger, Robert Wuhl, Michael Gough", director: "Tim Burton", duration: "2h 6m", image_file_name: "batman.jpg", trailer: "https://www.youtube.com/embed/dgC9Q0uhX70", slug: "batman"},
  {title: "Avengers: Endgame", rating: "PG-13", total_gross: "0.0", description: "Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos -- the evil demigod who decimated the planet and the universe.", released_on: "2019-04-26", cast: "Chris Evans, Robert Downey Jr., Scarlett Johansson, Mark Ruffalo", director: "Anthony Russo, Joe Russo", duration: "3h 2m", image_file_name: "endgame.jpg", trailer: "https://www.youtube.com/embed/TcMBFSGVi1c", slug: "avengers-endgame"},
  {title: "Spider-Man: Far From Home", rating: "PG-13", total_gross: "0.0", description: "Peter Parker's relaxing European vacation takes an unexpected turn when Nick Fury suddenly shows up in his hotel room. Parker soon finds himself donning the Spider-Man suit to help Fury stop the evil Mysterio from wreaking havoc across the continent.", released_on: "2019-07-05", cast: "Tom Holland, Jake Gyllenhaal, Zendaya, Marisa Tomei", director: "Jon Watts", duration: "N/A", image_file_name: "spiderman_far_from_home.jpg", trailer: "https://www.youtube.com/embed/DYYtuKyMtY8", slug: "spider-man-far-from-home"},
  {title: "Brightburn", rating: "NR", total_gross: "0.0", description: "What if a child from another world crash-landed on Earth, but instead of becoming a hero to mankind, he proved to be something far more sinister?", released_on: "2019-05-24", cast: "Jackson A. Dunn, David Yarovesky, Elizabeth Banks, David Denman", director: "David Yarovesky", duration: "N/A", image_file_name: "brightburn.jpg", trailer: "https://www.youtube.com/embed/oD1vbhicJUY", slug: "brightburn"},
  {title: "Inception", rating: "PG-13", total_gross: "292576195.0", description: "Dom Cobb is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. His skill has made him a hot commodity in the world of corporate espionage but has also cost him everything he loves. Cobb gets a chance at redemption when he is offered a seemingly impossible task: Plant an idea in someone's mind. If he succeeds, it will be the perfect crime, but a dangerous enemy anticipates Cobb's every move.", released_on: "2010-07-13", cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy, Ken Watanabe", director: "Christopher Nolan", duration: "2h 28m", image_file_name: "inception.jpg", trailer: "https://www.youtube.com/embed/8hP9D6kZseM", slug: "inception"},
  {title: "Aladdin", rating: "NR", total_gross: "0.0", description: "A kindhearted Arabian street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make the deepest wishes come true.", released_on: "2019-05-24", cast: "Will Smith, Mena Massoud, Nasim Pedrad, Naomi Scott", director: "Guy Ritchie", duration: "N/A", image_file_name: "aladdin.jpg", trailer: "https://www.youtube-nocookie.com/embed/foyufD52aog", slug: "aladdin"},
  {title: "Star Wars: Episode IV - A New Hope", rating: "PG", total_gross: "307263857.0", description: "The Imperial Forces -- under orders from cruel Darth Vader hold Princess Leia hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker and Han Solo, captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 and C-3PO to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.", released_on: "1977-05-25", cast: " Carrie Fisher, Mark Hamill, Harrison Ford, Anthony Daniels", director: "George Lucas", duration: "2h 5m", image_file_name: "starwarsnewhope.jpg", trailer: "https://www.youtube.com/embed/vZ734NWnAHA", slug: "star-wars-episode-iv-a-new-hope"},
  {title: "Superman", rating: "PG", total_gross: "134218018.0", description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest superhero.", released_on: "1978-12-15", cast: "Christopher Reeve, Gene Hackman, Marlon Brando, Margot Kidder, Terence Stamp", director: "Richard Donner", duration: "3h 8m", image_file_name: "superman.jpg", trailer: "https://www.youtube.com/embed/zHaKVHOjtiw", slug: "superman"},
  {title: "Spider-Man", rating: "PG", total_gross: "403706375.0", description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.", released_on: "2002-05-03", cast: "Tobey Maguire, Willem Dafoe, Kirsten Dunst, James Franco, Cliff Robertson, Rosemary Harris, J.K. Simmons", director: "Sam Raimi", duration: "2h 1m", image_file_name: "spiderman.jpg", trailer: "https://www.youtube.com/embed/BWsLc3j1AWg", slug: "spider-man"},
  {title: "Napoleon Dynamite", rating: "PG", total_gross: "44940956.0", description: "A listless and alienated teenager decides to help his new friend win the class presidency in their small western high school, while he must deal with his bizarre family life back home.", released_on: "2004-06-11", cast: "Jon Heder, Efren Ramirez, Tina Majorino, Jon Gries", director: "Jared Hess", duration: "1h 36m", image_file_name: "napoleon_dynamite.jpg", trailer: "https://www.youtube.com/embed/qH-FBPRf7NQ?start=6", slug: "napoleon-dynamite"},
  {title: "It", rating: "R", total_gross: "327481748.0", description: "Seven young outcasts in Derry, Maine, are about to face their worst nightmare -- an ancient, shape-shifting evil that emerges from the sewer every 27 years to prey on the town's children. Banding together over the course of one horrifying summer, the friends must overcome their own personal fears to battle the murderous, bloodthirsty clown known as Pennywise.", released_on: "2017-09-08", cast: "Bill Skarsgård, Jaeden Lieberher, Jeremy Ray Taylor, Sophia Lillis, Finn Wolfhard, Jack Dylan Grazer", director: "Andrés Muschietti", duration: "2h 15m", image_file_name: "it.jpg", trailer: "https://www.youtube.com/embed/xKJmEC5ieOk", slug: "it"},
  {title: "Us", rating: "R", total_gross: "238175168.0", description: "Accompanied by her husband, son and daughter, Adelaide Wilson returns to the beachfront home where she grew up as a child. Haunted by a traumatic experience from the past, Adelaide grows increasingly concerned that something bad is going to happen. Her worst fears soon become a reality when four masked strangers descend upon the house, forcing the Wilsons into a fight for survival. When the masks come off, the family is horrified to learn that each attacker takes the appearance of one of them.", released_on: "2019-03-22", cast: "Lupita Nyong'o, Madison Curry, Ashley McKoy, Winston Duke, Shahadi Wright Joseph", director: "Jordan Peele", duration: "2h 1m", image_file_name: "us.jpg", trailer: "https://www.youtube-nocookie.com/embed/hNCmb-4oXJA", slug: "us"},
  {title: "Captain Marvel", rating: "PG-13", total_gross: "1068926127.0", description: "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skrulls. Living on Earth in 1995, she keeps having recurring memories of another life as U.S. Air Force pilot Carol Danvers. With help from Nick Fury, Captain Marvel tries to uncover the secrets of her past while harnessing her special superpowers to end the war with the evil Skrulls.", released_on: "2019-03-08", cast: "Brie Larson, Samuel L. Jackson, Ben Mendelsohn, Djimon Hounsou, Lee Pace", director: "Anna Boden, Ryan Fleck", duration: "2h 5m", image_file_name: "captain_marvel.jpg", trailer: "https://www.youtube-nocookie.com/embed/Z1BCujX3pw8", slug: "captain-marvel"},
  {title: "Hellboy", rating: "R", total_gross: "15796271.0", description: "Hellboy, caught between the worlds of the supernatural and human, battles an ancient sorceress bent on revenge.", released_on: "2019-04-12", cast: "David Harbour, Milla Jovovich, Ian McShane, Sasha Lane", director: "Neil Marshall", duration: "2h 1m", image_file_name: "hellboy.jpg", trailer: "https://www.youtube-nocookie.com/embed/dt5g5_1cKVk", slug: "hellboy"},
  {title: "Joker", rating: "NR", total_gross: "0.0", description: "Failed comedian Arthur Fleck encounters violent thugs while wandering the streets of Gotham City dressed as a clown. Disregarded by society, Fleck begins a slow dissent into madness as he transforms into the criminal mastermind known as the Joker.", released_on: "2019-10-04", cast: "Joaquin Phoenix, Zazie Beetz, Robert De Niro, Jolie Chan", director: "Todd Phillips", duration: "N/A", image_file_name: "joker.jpg", trailer: "https://www.youtube-nocookie.com/embed/t433PEQGErc", slug: "joker"},
  {title: "Toy Story 4", rating: "NR", total_gross: "0.0", description: "Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody's slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they're worlds apart when it comes to what they want from life as a toy.", released_on: "2019-06-21", cast: "Tom Hanks, Tim Allen, Annie Potts, Joan Cusack, Blake Clark, Wallace Shawn", director: "Josh Cooley", duration: "1h 29m", image_file_name: "toy_story_4.jpg", trailer: "https://www.youtube-nocookie.com/embed/wmiIUN-7qhE", slug: "toy-story-4"},
  {title: "Jurassic Park", rating: "PG-13", total_gross: "1029528120.0", description: "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.", released_on: "1993-06-11", cast: " Sam Neill, Laura Dern, Jeff Goldblum, Richard Attenborough, Bob Peck, BD Wong", director: "Steven Spielberg", duration: "2h 7m", image_file_name: "jurassic_park.jpg", trailer: "https://www.youtube-nocookie.com/embed/rYN9GG-tGao", slug: "jurassic-park"},
  {title: "Shazam", rating: "PG-13", total_gross: "323820880.0", description: "We all have a superhero inside of us -- it just takes a bit of magic to bring it out. In 14-year-old Billy Batson's case, all he needs to do is shout out one word to transform into the adult superhero Shazam. Still a kid at heart, Shazam revels in the new version of himself by doing what any other teen would do -- have fun while testing out his newfound powers. But he'll need to master them quickly before the evil Dr. Thaddeus Sivana can get his hands on Shazam's magical abilities.", released_on: "2019-04-05", cast: "Zachary Levi, Asher Angel, Adam Brody, Faithe Herman, Grace Fulton, Ian Chen, Jovan Armand", director: "David Sandberg", duration: "2h 12m", image_file_name: "shazam.jpg", trailer: "https://www.youtube-nocookie.com/embed/uilJZZ_iVwY", slug: "shazam"}
])

Characterization.create!([
  {movie_id: 3, genre_id: 6},
  {movie_id: 3, genre_id: 7},
  {movie_id: 2, genre_id: 1},
  {movie_id: 2, genre_id: 9},
  {movie_id: 5, genre_id: 4},
  {movie_id: 5, genre_id: 6},
  {movie_id: 14, genre_id: 6},
  {movie_id: 14, genre_id: 7},
  {movie_id: 15, genre_id: 7},
  {movie_id: 6, genre_id: 2},
  {movie_id: 6, genre_id: 6},
  {movie_id: 12, genre_id: 3},
  {movie_id: 12, genre_id: 4},
  {movie_id: 16, genre_id: 9},
  {movie_id: 18, genre_id: 7},
  {movie_id: 11, genre_id: 5},
  {movie_id: 19, genre_id: 6},
  {movie_id: 19, genre_id: 7},
  {movie_id: 10, genre_id: 1},
  {movie_id: 10, genre_id: 7},
  {movie_id: 4, genre_id: 6},
  {movie_id: 4, genre_id: 7},
  {movie_id: 8, genre_id: 7},
  {movie_id: 9, genre_id: 1},
  {movie_id: 9, genre_id: 4},
  {movie_id: 17, genre_id: 5},
  {movie_id: 17, genre_id: 10},
  {movie_id: 13, genre_id: 2},
  {movie_id: 7, genre_id: 8},
  {movie_id: 7, genre_id: 4},
  {movie_id: 1, genre_id: 2},
  {movie_id: 1, genre_id: 6},
  {movie_id: 1, genre_id: 1}
])

# Favourite.create!([
#   {movie_id: 3, user_id: 1},
#   {movie_id: 7, user_id: 1}
# ])
Review.create!([
  {movie_id: 3, stars: 5, comment: "It was really good!", user_id: 1},
  {movie_id: 14, stars: 1, comment: "I thought it was bad!", user_id: 1},
  {movie_id: 9, stars: 3, comment: "Meh!", user_id: 1},
  {movie_id: 11, stars: 5, comment: "So funny!", user_id: 1},
  {movie_id: 15, stars: 1, comment: "This is so bad!", user_id: 1},
  {movie_id: 10, stars: 5, comment: "One of the best movies of all time!", user_id: 1},
  {movie_id: 15, stars: 2, comment: "Don't see this!", user_id: 1}
])
