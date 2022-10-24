//
//  Movie.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 23/10/22.
//

import Foundation

struct TrendingMoviesResponse: Codable {
  let results: [Movie]
}

struct Movie: Codable {
  let id: Int
  let media_type: String?
  let original_name: String?
  let original_title: String?
  let poster_path: String?
  let overview: String?
  let vote_count: Int
  let release_date: String?
  let vote_average: Double
}


//{
//    page = 1;
//    results =     (
//                {
//            adult = 0;
//            "backdrop_path" = "/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg";
//            "genre_ids" =             (
//                28,
//                14,
//                12
//            );
//            id = 436270;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Black Adam";
//            overview = "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods\U2014and imprisoned just as quickly\U2014Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.";
//            popularity = "5132.631";
//            "poster_path" = "/3zXceNTtyj5FLjwQXuPvLYK5YYL.jpg";
//            "release_date" = "2022-10-19";
//            title = "Black Adam";
//            video = 0;
//            "vote_average" = "7.263";
//            "vote_count" = 357;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/6QenFR0cpCjycViJEPI9h5GCtUz.jpg";
//            "first_air_date" = "2022-10-20";
//            "genre_ids" =             (
//                10765,
//                18
//            );
//            id = 95403;
//            "media_type" = tv;
//            name = "The Peripheral";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "The Peripheral";
//            overview = "Stuck in a small Appalachian town, a young woman\U2019s only escape from the daily grind is playing advanced video games. She is such a good player that a company sends her a new video game system to test\U2026but it has a surprise in store. It unlocks all of her dreams of finding a purpose, romance, and glamour in what seems like a game\U2026but it also puts her and her family in real danger.";
//            popularity = "185.863";
//            "poster_path" = "/qtuAjmUWY7xIEOg0yfpqLkHSeeu.jpg";
//            "vote_average" = "8.4";
//            "vote_count" = 42;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/tSxbUnrnWlR5dQvUgqMI7sACmFD.jpg";
//            "genre_ids" =             (
//                14,
//                28,
//                18
//            );
//            id = 779782;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "The School for Good and Evil";
//            overview = "Best friends Sophie and Agatha navigate an enchanted school for young heroes and villains \U2014 and find themselves on opposing sides of the battle between good and evil.";
//            popularity = "253.518";
//            "poster_path" = "/6oZeEu1GDILdwezmZ5e2xWISf1C.jpg";
//            "release_date" = "2022-10-19";
//            title = "The School for Good and Evil";
//            video = 0;
//            "vote_average" = "7.474";
//            "vote_count" = 250;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg";
//            "first_air_date" = "2022-08-21";
//            "genre_ids" =             (
//                10765,
//                18,
//                10759
//            );
//            id = 94997;
//            "media_type" = tv;
//            name = "House of the Dragon";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "House of the Dragon";
//            overview = "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.";
//            popularity = "6294.046";
//            "poster_path" = "/z2yahl2uefxDCl0nogcRBstwruJ.jpg";
//            "vote_average" = "8.531000000000001";
//            "vote_count" = 1945;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/mifoXrO18fyEBPYn9UqNduunod9.jpg";
//            "genre_ids" =             (
//                18,
//                35
//            );
//            id = 869025;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Raymond & Ray";
//            overview = "Half brothers Raymond and Ray reunite when their estranged father dies\U2014and discover that his final wish was for them to dig his grave. Together, they process who they\U2019ve become as men, both because of their father and in spite of him.";
//            popularity = "35.29";
//            "poster_path" = "/fdKZmSQHD17JjGUYkluhpttgJRi.jpg";
//            "release_date" = "2022-10-14";
//            title = "Raymond & Ray";
//            video = 0;
//            "vote_average" = "6.875";
//            "vote_count" = 28;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/y5Z0WesTjvn59jP6yo459eUsbli.jpg";
//            "genre_ids" =             (
//                27,
//                53
//            );
//            id = 663712;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Terrifier 2";
//            overview = "After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art's evil intent.";
//            popularity = "1202.813";
//            "poster_path" = "/yB8BMtvzHlMmRT1WmTQnGv1bcOK.jpg";
//            "release_date" = "2022-10-06";
//            title = "Terrifier 2";
//            video = 0;
//            "vote_average" = "7.196";
//            "vote_count" = 23;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/rl7Jw8PjhSIjArOlDNv0JQPL1ZV.jpg";
//            "genre_ids" =             (
//                10749,
//                18
//            );
//            id = 851644;
//            "media_type" = movie;
//            "original_language" = ko;
//            "original_title" = "20\Uc138\Uae30 \Uc18c\Ub140";
//            overview = "Yeon-du asks her best friend Bora to collect all the information she can about Baek Hyun-jin while she is away in the U.S. for heart surgery. Bora decides to get close to Baek's best friend, Pung Woon-ho first. However, Bora's clumsy plan unfolds in an unexpected direction. In 1999, a year before the new century, Bora, who turns seventeen, falls into the fever of first love.";
//            popularity = "21.781";
//            "poster_path" = "/od22ftNnyag0TTxcnJhlsu3aLoU.jpg";
//            "release_date" = "2022-10-06";
//            title = "20th Century Girl";
//            video = 0;
//            "vote_average" = "8.573";
//            "vote_count" = 48;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/u6WzMRpTkGzIlfsPNtDfIBfEy9z.jpg";
//            "genre_ids" =             (
//                80,
//                18,
//                9648,
//                53
//            );
//            id = 848791;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "The Stranger";
//            overview = "Two strangers strike up a conversation on a long journey. One is a suspect in an unsolved missing person\U2019s case and the other an undercover operative on his trail. Their uneasy friendship becomes the core of this tightly wrought thriller, which is based on the true story of one of the largest investigations and undercover operations in Australia.";
//            popularity = "32.757";
//            "poster_path" = "/ydbm5Ad1nyZq7eywWsw82Wxdsgg.jpg";
//            "release_date" = "2022-10-06";
//            title = "The Stranger";
//            video = 0;
//            "vote_average" = "6.423";
//            "vote_count" = 39;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/zt6sKnx9dEiRCb7oVMlfmmMGJMO.jpg";
//            "genre_ids" =             (
//                28,
//                35,
//                53
//            );
//            id = 718930;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Bullet Train";
//            overview = "Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug's latest mission puts him on a collision course with lethal adversaries from around the globe\U2014all with connected, yet conflicting, objectives\U2014on the world's fastest train.";
//            popularity = "2654.547";
//            "poster_path" = "/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg";
//            "release_date" = "2022-07-03";
//            title = "Bullet Train";
//            video = 0;
//            "vote_average" = "7.522";
//            "vote_count" = 1943;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/oxUG1YVKDXz8GqC57LuhZHLVscf.jpg";
//            "genre_ids" =             (
//                27,
//                53,
//                18
//            );
//            id = 949423;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = Pearl;
//            overview = "Trapped on her family\U2019s isolated farm, Pearl must tend to her ailing father under the bitter and overbearing watch of her devout mother. Lusting for a glamorous life like she\U2019s seen in the movies, Pearl\U2019s ambitions, temptations and repressions collide.";
//            popularity = "82.559";
//            "poster_path" = "/ulBLIBqvdnf4H6JBt0OpMCU1ECn.jpg";
//            "release_date" = "2022-09-16";
//            title = Pearl;
//            video = 0;
//            "vote_average" = "6.991";
//            "vote_count" = 54;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/oS5q8psMCW0OjlvsGmM5GDboCHR.jpg";
//            "genre_ids" =             (
//                18,
//                36
//            );
//            id = 714888;
//            "media_type" = movie;
//            "original_language" = es;
//            "original_title" = "Argentina, 1985";
//            overview = "Argentina, 1985 is inspired by the true story of Julio Strassera, Luis Moreno Ocampo and their young legal team of unlikely heroes in their David-vs-Goliath battle in which, under constant threat, they dared to prosecute Argentina\U2019s bloodiest military dictatorship against all odds and in a race against time to bring justice to the victims of the Military Junta.";
//            popularity = "369.873";
//            "poster_path" = "/5suDeQlPSfbeOzJI9MPQF8SDQNR.jpg";
//            "release_date" = "2022-09-29";
//            title = "Argentina, 1985";
//            video = 0;
//            "vote_average" = "8.148";
//            "vote_count" = 54;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/DjqhwZnmXahBX3PYEm3sbDBFcy.jpg";
//            "first_air_date" = "2020-10-23";
//            "genre_ids" =             (
//                10759,
//                18
//            );
//            id = 93785;
//            "media_type" = tv;
//            name = Barbarians;
//            "origin_country" =             (
//                DE
//            );
//            "original_language" = de;
//            "original_name" = Barbaren;
//            overview = "Three people's fates are interwoven in the Battle of the Teutoburg Forest in 9 A.D., during which Germanic warriors halt the spread of the Roman Empire.";
//            popularity = "222.902";
//            "poster_path" = "/trfHliK2hhw2xOJVztHqKylyzrD.jpg";
//            "vote_average" = "7.375";
//            "vote_count" = 437;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/aTovumsNlDjof7YVoU5nW2RHaYn.jpg";
//            "genre_ids" =             (
//                27,
//                53
//            );
//            id = 616820;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Halloween Ends";
//            overview = "Four years after the events of Halloween in 2018, Laurie has decided to liberate herself from fear and rage and embrace life. But when a young man is accused of killing a boy he was babysitting, it ignites a cascade of violence and terror that will force Laurie to finally confront the evil she can\U2019t control, once and for all.";
//            popularity = "4516.927";
//            "poster_path" = "/3uDwqxbr0j34rJVJMOW6o8Upw5W.jpg";
//            "release_date" = "2022-10-12";
//            title = "Halloween Ends";
//            video = 0;
//            "vote_average" = "6.687";
//            "vote_count" = 588;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/1rO4xoCo4Z5WubK0OwdVll3DPYo.jpg";
//            "first_air_date" = "2022-09-01";
//            "genre_ids" =             (
//                10765,
//                10759,
//                18
//            );
//            id = 84773;
//            "media_type" = tv;
//            name = "The Lord of the Rings: The Rings of Power";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "The Lord of the Rings: The Rings of Power";
//            overview = "Beginning in a time of relative peace, we follow an ensemble cast of characters as they confront the re-emergence of evil to Middle-earth. From the darkest depths of the Misty Mountains, to the majestic forests of Lindon, to the breathtaking island kingdom of N\U00famenor, to the furthest reaches of the map, these kingdoms and characters will carve out legacies that live on long after they are gone.";
//            popularity = "4429.714";
//            "poster_path" = "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg";
//            "vote_average" = "7.689";
//            "vote_count" = 1270;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/14QbnygCuTO0vl7CAFmPf1fgZfV.jpg";
//            "genre_ids" =             (
//                28,
//                12,
//                878
//            );
//            id = 634649;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Spider-Man: No Way Home";
//            overview = "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.";
//            popularity = "1073.395";
//            "poster_path" = "/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg";
//            "release_date" = "2021-12-15";
//            title = "Spider-Man: No Way Home";
//            video = 0;
//            "vote_average" = "8.031000000000001";
//            "vote_count" = 15567;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/7R1gR2t4JL6raEOuZvbP3y0yl8r.jpg";
//            "genre_ids" =             (
//                27
//            );
//            id = 1024535;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = Matriarch;
//            overview = "Afflicted with a mysterious disease after surviving an overdose, a woman returns to her childhood home to confront her personal demons but instead discovers a real one.";
//            popularity = "29.68";
//            "poster_path" = "/77r50i4ya2VLhhMvQpBZIPa9V9B.jpg";
//            "release_date" = "2022-10-11";
//            title = Matriarch;
//            video = 0;
//            "vote_average" = "3.6";
//            "vote_count" = 8;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/mNXnh4Ua8wMvSlAiXXzX7G3Ko5p.jpg";
//            "first_air_date" = "2022-10-21";
//            "genre_ids" =             (
//                18,
//                10751
//            );
//            id = 207717;
//            "media_type" = tv;
//            name = "From Scratch";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "From Scratch";
//            overview = "An artist finds romance with a chef in Italy and embarks on a life-changing journey of love, loss, resilience and hope across cultures and continents.";
//            popularity = "63.206";
//            "poster_path" = "/9GOhLT2HKsjTdnMI4ETdpAcuD8C.jpg";
//            "vote_average" = "6.6";
//            "vote_count" = 10;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/odJ4hx6g6vBt4lBWKFD1tI8WS4x.jpg";
//            "genre_ids" =             (
//                28,
//                18
//            );
//            id = 361743;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Top Gun: Maverick";
//            overview = "After more than thirty years of service as one of the Navy\U2019s top aviators, and dodging the advancement in rank that would ground him, Pete \U201cMaverick\U201d Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen.";
//            popularity = "1161.556";
//            "poster_path" = "/62HCnUTziyWcpDaBO2i1DX17ljH.jpg";
//            "release_date" = "2022-05-24";
//            title = "Top Gun: Maverick";
//            video = 0;
//            "vote_average" = "8.35";
//            "vote_count" = 4395;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/sRfl6vyzGWutgG0cmXmbChC4iN6.jpg";
//            "first_air_date" = "2005-03-26";
//            "genre_ids" =             (
//                10759,
//                18,
//                10765
//            );
//            id = 57243;
//            "media_type" = tv;
//            name = "Doctor Who";
//            "origin_country" =             (
//                GB
//            );
//            "original_language" = en;
//            "original_name" = "Doctor Who";
//            overview = "The Doctor is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living\U2014more of a hobby actually, and the Doctor's very, very good at it.";
//            popularity = "201.329";
//            "poster_path" = "/sz4zF5z9zyFh8Z6g5IQPNq91cI7.jpg";
//            "vote_average" = "7.386";
//            "vote_count" = 2442;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/xxBHlHxTehbO6miXGSqCtfI96M0.jpg";
//            "genre_ids" =             (
//                28,
//                80
//            );
//            id = 1024546;
//            "media_type" = movie;
//            "original_language" = en;
//            "original_title" = "Detective Knight: Rogue";
//            overview = "As Los Angeles prepares for Halloween, mask-wearing armed robbers critically wound detective James Knight\U2019s partner in a shootout following a heist. With Knight in hot pursuit, the bandits flee L.A. for New York, where the detective\U2019s dark past collides with his present case and threatens to tear his world apart\U2026unless redemption can claim Knight first.";
//            popularity = "72.54900000000001";
//            "poster_path" = "/2wj5iUJ2B5AQ1lFctJgUrHHsp9B.jpg";
//            "release_date" = "2022-10-21";
//            title = "Detective Knight: Rogue";
//            video = 0;
//            "vote_average" = "3.7";
//            "vote_count" = 3;
//        }
//    );
//    "total_pages" = 1000;
//    "total_results" = 20000;
//}
//



//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



//TrendingMoviesResponse(results: [Netflix_Clone.Movie(id: 436270, media_type: Optional("movie"), original_name: nil, original_title: Optional("Black Adam"), poster_path: Optional("/3zXceNTtyj5FLjwQXuPvLYK5YYL.jpg"), overview: Optional("Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world."), vote_count: 357, release_date: Optional("2022-10-19"), vote_average: 7.263), Netflix_Clone.Movie(id: 95403, media_type: Optional("tv"), original_name: Optional("The Peripheral"), original_title: nil, poster_path: Optional("/qtuAjmUWY7xIEOg0yfpqLkHSeeu.jpg"), overview: Optional("Stuck in a small Appalachian town, a young woman’s only escape from the daily grind is playing advanced video games. She is such a good player that a company sends her a new video game system to test…but it has a surprise in store. It unlocks all of her dreams of finding a purpose, romance, and glamour in what seems like a game…but it also puts her and her family in real danger."), vote_count: 42, release_date: nil, vote_average: 8.4), Netflix_Clone.Movie(id: 779782, media_type: Optional("movie"), original_name: nil, original_title: Optional("The School for Good and Evil"), poster_path: Optional("/6oZeEu1GDILdwezmZ5e2xWISf1C.jpg"), overview: Optional("Best friends Sophie and Agatha navigate an enchanted school for young heroes and villains — and find themselves on opposing sides of the battle between good and evil."), vote_count: 250, release_date: Optional("2022-10-19"), vote_average: 7.474), Netflix_Clone.Movie(id: 94997, media_type: Optional("tv"), original_name: Optional("House of the Dragon"), original_title: nil, poster_path: Optional("/z2yahl2uefxDCl0nogcRBstwruJ.jpg"), overview: Optional("The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm."), vote_count: 1945, release_date: nil, vote_average: 8.531), Netflix_Clone.Movie(id: 869025, media_type: Optional("movie"), original_name: nil, original_title: Optional("Raymond & Ray"), poster_path: Optional("/fdKZmSQHD17JjGUYkluhpttgJRi.jpg"), overview: Optional("Half brothers Raymond and Ray reunite when their estranged father dies—and discover that his final wish was for them to dig his grave. Together, they process who they’ve become as men, both because of their father and in spite of him."), vote_count: 28, release_date: Optional("2022-10-14"), vote_average: 6.875), Netflix_Clone.Movie(id: 663712, media_type: Optional("movie"), original_name: nil, original_title: Optional("Terrifier 2"), poster_path: Optional("/yB8BMtvzHlMmRT1WmTQnGv1bcOK.jpg"), overview: Optional("After being resurrected by a sinister entity, Art the Clown returns to Miles County where he must hunt down and destroy a teenage girl and her younger brother on Halloween night.  As the body count rises, the siblings fight to stay alive while uncovering the true nature of Art\'s evil intent."), vote_count: 23, release_date: Optional("2022-10-06"), vote_average: 7.196), Netflix_Clone.Movie(id: 851644, media_type: Optional("movie"), original_name: nil, original_title: Optional("20세기 소녀"), poster_path: Optional("/od22ftNnyag0TTxcnJhlsu3aLoU.jpg"), overview: Optional("Yeon-du asks her best friend Bora to collect all the information she can about Baek Hyun-jin while she is away in the U.S. for heart surgery. Bora decides to get close to Baek\'s best friend, Pung Woon-ho first. However, Bora\'s clumsy plan unfolds in an unexpected direction. In 1999, a year before the new century, Bora, who turns seventeen, falls into the fever of first love."), vote_count: 48, release_date: Optional("2022-10-06"), vote_average: 8.573), Netflix_Clone.Movie(id: 848791, media_type: Optional("movie"), original_name: nil, original_title: Optional("The Stranger"), poster_path: Optional("/ydbm5Ad1nyZq7eywWsw82Wxdsgg.jpg"), overview: Optional("Two strangers strike up a conversation on a long journey. One is a suspect in an unsolved missing person’s case and the other an undercover operative on his trail. Their uneasy friendship becomes the core of this tightly wrought thriller, which is based on the true story of one of the largest investigations and undercover operations in Australia."), vote_count: 39, release_date: Optional("2022-10-06"), vote_average: 6.423), Netflix_Clone.Movie(id: 718930, media_type: Optional("movie"), original_name: nil, original_title: Optional("Bullet Train"), poster_path: Optional("/tVxDe01Zy3kZqaZRNiXFGDICdZk.jpg"), overview: Optional("Unlucky assassin Ladybug is determined to do his job peacefully after one too many gigs gone off the rails. Fate, however, may have other plans, as Ladybug\'s latest mission puts him on a collision course with lethal adversaries from around the globe—all with connected, yet conflicting, objectives—on the world\'s fastest train."), vote_count: 1943, release_date: Optional("2022-07-03"), vote_average: 7.522), Netflix_Clone.Movie(id: 949423, media_type: Optional("movie"), original_name: nil, original_title: Optional("Pearl"), poster_path: Optional("/ulBLIBqvdnf4H6JBt0OpMCU1ECn.jpg"), overview: Optional("Trapped on her family’s isolated farm, Pearl must tend to her ailing father under the bitter and overbearing watch of her devout mother. Lusting for a glamorous life like she’s seen in the movies, Pearl’s ambitions, temptations and repressions collide."), vote_count: 54, release_date: Optional("2022-09-16"), vote_average: 6.991), Netflix_Clone.Movie(id: 714888, media_type: Optional("movie"), original_name: nil, original_title: Optional("Argentina, 1985"), poster_path: Optional("/5suDeQlPSfbeOzJI9MPQF8SDQNR.jpg"), overview: Optional("Argentina, 1985 is inspired by the true story of Julio Strassera, Luis Moreno Ocampo and their young legal team of unlikely heroes in their David-vs-Goliath battle in which, under constant threat, they dared to prosecute Argentina’s bloodiest military dictatorship against all odds and in a race against time to bring justice to the victims of the Military Junta."), vote_count: 54, release_date: Optional("2022-09-29"), vote_average: 8.148), Netflix_Clone.Movie(id: 93785, media_type: Optional("tv"), original_name: Optional("Barbaren"), original_title: nil, poster_path: Optional("/trfHliK2hhw2xOJVztHqKylyzrD.jpg"), overview: Optional("Three people\'s fates are interwoven in the Battle of the Teutoburg Forest in 9 A.D., during which Germanic warriors halt the spread of the Roman Empire."), vote_count: 437, release_date: nil, vote_average: 7.375), Netflix_Clone.Movie(id: 616820, media_type: Optional("movie"), original_name: nil, original_title: Optional("Halloween Ends"), poster_path: Optional("/3uDwqxbr0j34rJVJMOW6o8Upw5W.jpg"), overview: Optional("Four years after the events of Halloween in 2018, Laurie has decided to liberate herself from fear and rage and embrace life. But when a young man is accused of killing a boy he was babysitting, it ignites a cascade of violence and terror that will force Laurie to finally confront the evil she can’t control, once and for all."), vote_count: 588, release_date: Optional("2022-10-12"), vote_average: 6.687), Netflix_Clone.Movie(id: 84773, media_type: Optional("tv"), original_name: Optional("The Lord of the Rings: The Rings of Power"), original_title: nil, poster_path: Optional("/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg"), overview: Optional("Beginning in a time of relative peace, we follow an ensemble cast of characters as they confront the re-emergence of evil to Middle-earth. From the darkest depths of the Misty Mountains, to the majestic forests of Lindon, to the breathtaking island kingdom of Númenor, to the furthest reaches of the map, these kingdoms and characters will carve out legacies that live on long after they are gone."), vote_count: 1270, release_date: nil, vote_average: 7.689), Netflix_Clone.Movie(id: 634649, media_type: Optional("movie"), original_name: nil, original_title: Optional("Spider-Man: No Way Home"), poster_path: Optional("/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg"), overview: Optional("Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man."), vote_count: 15567, release_date: Optional("2021-12-15"), vote_average: 8.031), Netflix_Clone.Movie(id: 1024535, media_type: Optional("movie"), original_name: nil, original_title: Optional("Matriarch"), poster_path: Optional("/77r50i4ya2VLhhMvQpBZIPa9V9B.jpg"), overview: Optional("Afflicted with a mysterious disease after surviving an overdose, a woman returns to her childhood home to confront her personal demons but instead discovers a real one."), vote_count: 8, release_date: Optional("2022-10-11"), vote_average: 3.6), Netflix_Clone.Movie(id: 207717, media_type: Optional("tv"), original_name: Optional("From Scratch"), original_title: nil, poster_path: Optional("/9GOhLT2HKsjTdnMI4ETdpAcuD8C.jpg"), overview: Optional("An artist finds romance with a chef in Italy and embarks on a life-changing journey of love, loss, resilience and hope across cultures and continents."), vote_count: 10, release_date: nil, vote_average: 6.6), Netflix_Clone.Movie(id: 361743, media_type: Optional("movie"), original_name: nil, original_title: Optional("Top Gun: Maverick"), poster_path: Optional("/62HCnUTziyWcpDaBO2i1DX17ljH.jpg"), overview: Optional("After more than thirty years of service as one of the Navy’s top aviators, and dodging the advancement in rank that would ground him, Pete “Maverick” Mitchell finds himself training a detachment of TOP GUN graduates for a specialized mission the likes of which no living pilot has ever seen."), vote_count: 4395, release_date: Optional("2022-05-24"), vote_average: 8.35), Netflix_Clone.Movie(id: 57243, media_type: Optional("tv"), original_name: Optional("Doctor Who"), original_title: nil, poster_path: Optional("/sz4zF5z9zyFh8Z6g5IQPNq91cI7.jpg"), overview: Optional("The Doctor is a Time Lord: a 900 year old alien with 2 hearts, part of a gifted civilization who mastered time travel. The Doctor saves planets for a living—more of a hobby actually, and the Doctor\'s very, very good at it."), vote_count: 2442, release_date: nil, vote_average: 7.386), Netflix_Clone.Movie(id: 1024546, media_type: Optional("movie"), original_name: nil, original_title: Optional("Detective Knight: Rogue"), poster_path: Optional("/2wj5iUJ2B5AQ1lFctJgUrHHsp9B.jpg"), overview: Optional("As Los Angeles prepares for Halloween, mask-wearing armed robbers critically wound detective James Knight’s partner in a shootout following a heist. With Knight in hot pursuit, the bandits flee L.A. for New York, where the detective’s dark past collides with his present case and threatens to tear his world apart…unless redemption can claim Knight first."), vote_count: 3, release_date: Optional("2022-10-21"), vote_average: 3.7)])

