//
//  Tv.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 24/10/22.
//

import Foundation

// tv model is not necessary. same model as movie.
struct TrendingTvResponse: Codable {
  let results: [Tv]
}

struct Tv: Codable {
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
//            "backdrop_path" = "/etj8E2o0Bud0HkONVQPjyCkIvpv.jpg";
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
//            popularity = "6816.367";
//            "poster_path" = "/z2yahl2uefxDCl0nogcRBstwruJ.jpg";
//            "vote_average" = "8.532";
//            "vote_count" = 2012;
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
//            popularity = "260.208";
//            "poster_path" = "/qtuAjmUWY7xIEOg0yfpqLkHSeeu.jpg";
//            "vote_average" = "8.449";
//            "vote_count" = 59;
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
//            popularity = "275.007";
//            "poster_path" = "/sz4zF5z9zyFh8Z6g5IQPNq91cI7.jpg";
//            "vote_average" = "7.386";
//            "vote_count" = 2444;
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
//            popularity = "233.034";
//            "poster_path" = "/trfHliK2hhw2xOJVztHqKylyzrD.jpg";
//            "vote_average" = "7.405";
//            "vote_count" = 442;
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
//            popularity = "4462.907";
//            "poster_path" = "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg";
//            "vote_average" = "7.678";
//            "vote_count" = 1289;
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
//            popularity = "88.488";
//            "poster_path" = "/9GOhLT2HKsjTdnMI4ETdpAcuD8C.jpg";
//            "vote_average" = 7;
//            "vote_count" = 14;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/qtfMr08KQsWXnCHY0a96N8NpQ2l.jpg";
//            "first_air_date" = "2004-10-05";
//            "genre_ids" =             (
//                10759,
//                16,
//                10765
//            );
//            id = 30984;
//            "media_type" = tv;
//            name = Bleach;
//            "origin_country" =             (
//                JP
//            );
//            "original_language" = ja;
//            "original_name" = "\U30d6\U30ea\U30fc\U30c1";
//            overview = "For as long as he can remember, Ichigo Kurosaki has been able to see ghosts. But when he meets Rukia, a Soul Reaper who battles evil spirits known as Hollows, he finds his life is changed forever. Now, with a newfound wealth of spiritual energy, Ichigo discovers his true calling: to protect the living and the dead from evil.";
//            popularity = "253.737";
//            "poster_path" = "/2EewmxXe72ogD0EaWM8gqa0ccIw.jpg";
//            "vote_average" = "8.4";
//            "vote_count" = 1301;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/wvdWb5kTQipdMDqCclC6Y3zr4j3.jpg";
//            "first_air_date" = "2010-10-31";
//            "genre_ids" =             (
//                10759,
//                18,
//                10765
//            );
//            id = 1402;
//            "media_type" = tv;
//            name = "The Walking Dead";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "The Walking Dead";
//            overview = "Sheriff's deputy Rick Grimes awakens from a coma to find a post-apocalyptic world dominated by flesh-eating zombies. He sets out to find his family and encounters many other survivors along the way.";
//            popularity = "1408.14";
//            "poster_path" = "/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg";
//            "vote_average" = "8.112";
//            "vote_count" = 13844;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/q0yqtYo3QqZd04vwcKzxmje5a0o.jpg";
//            "first_air_date" = "2020-04-23";
//            "genre_ids" =             (
//                80,
//                18
//            );
//            id = 85021;
//            "media_type" = tv;
//            name = "Gangs of London";
//            "origin_country" =             (
//                GB
//            );
//            "original_language" = en;
//            "original_name" = "Gangs of London";
//            overview = "When the head of a criminal organisation, Finn Wallace is assassinated, the sudden power vacuum his death creates threatens the fragile peace between the intricate web of gangs operating on the streets of the city. Now it\U2019s up to the grieving, volatile and impulsive Sean Wallace to restore control and find those responsible for killing his father.";
//            popularity = "128.527";
//            "poster_path" = "/2rkrGebJ8qkASujJ4EsXZKljlPA.jpg";
//            "vote_average" = "7.9";
//            "vote_count" = 391;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/9GvhICFMiRQA82vS6ydkXxeEkrd.jpg";
//            "first_air_date" = "2022-08-18";
//            "genre_ids" =             (
//                35,
//                10765
//            );
//            id = 92783;
//            "media_type" = tv;
//            name = "She-Hulk: Attorney at Law";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "She-Hulk: Attorney at Law";
//            overview = "Jennifer Walters navigates the complicated life of a single, 30-something attorney who also happens to be a green 6-foot-7-inch superpowered hulk.";
//            popularity = "1892.391";
//            "poster_path" = "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg";
//            "vote_average" = "6.787";
//            "vote_count" = 1162;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/ajztm40qDPqMONaSJhQ2PaNe2Xd.jpg";
//            "first_air_date" = "2022-09-21";
//            "genre_ids" =             (
//                10765,
//                10759,
//                10768
//            );
//            id = 83867;
//            "media_type" = tv;
//            name = "Star Wars: Andor";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "Star Wars: Andor";
//            overview = "The tale of the burgeoning rebellion against the Empire and how people and planets became involved. In an era filled with danger, deception and intrigue, Cassian Andor embarks on the path that is destined to turn him into a rebel hero.";
//            popularity = "675.324";
//            "poster_path" = "/59SVNwLfoMnZPPB6ukW6dlPxAdI.jpg";
//            "vote_average" = "7.991";
//            "vote_count" = 172;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/mBxsapX4DNhH1XkOlLp15He5sxL.jpg";
//            "first_air_date" = "1999-10-20";
//            "genre_ids" =             (
//                10759,
//                35,
//                16
//            );
//            id = 37854;
//            "media_type" = tv;
//            name = "One Piece";
//            "origin_country" =             (
//                JP
//            );
//            "original_language" = ja;
//            "original_name" = "\U30ef\U30f3\U30d4\U30fc\U30b9";
//            overview = "Years ago, the fearsome Pirate King, Gol D. Roger was executed leaving a huge pile of treasure and the famous \"One Piece\" behind. Whoever claims the \"One Piece\" will be named the new King of the Pirates. Monkey D. Luffy, a boy who consumed a \"Devil Fruit,\" decides to follow in the footsteps of his idol, the pirate Shanks, and find the One Piece. It helps, of course, that his body has the properties of rubber and that he's surrounded by a bevy of skilled fighters and thieves to help him along the way. Luffy will do anything to get the One Piece and become King of the Pirates!";
//            popularity = "99.51600000000001";
//            "poster_path" = "/e3NBGiAifW9Xt8xD5tpARskjccO.jpg";
//            "vote_average" = "8.722";
//            "vote_count" = 3336;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/suopoADq0k8YZr4dQXcU6pToj6s.jpg";
//            "first_air_date" = "2011-04-17";
//            "genre_ids" =             (
//                10765,
//                18,
//                10759
//            );
//            id = 1399;
//            "media_type" = tv;
//            name = "Game of Thrones";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "Game of Thrones";
//            overview = "Seven noble families fight for control of the mythical land of Westeros. Friction between the houses leads to full-scale war. All while a very ancient evil awakens in the farthest north. Amidst the war, a neglected military order of misfits, the Night's Watch, is all that stands between the realms of men and icy horrors beyond.";
//            popularity = "1077.613";
//            "poster_path" = "/u3bZgnGQ9T01sWNhyveQz0wH0Hl.jpg";
//            "vote_average" = "8.4";
//            "vote_count" = 19524;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/kUYeG86YRdx9ef3kCTabuuIRQ90.jpg";
//            "first_air_date" = "2022-10-13";
//            "genre_ids" =             (
//                18,
//                9648
//            );
//            id = 210232;
//            "media_type" = tv;
//            name = "The Watcher";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "The Watcher";
//            overview = "A family moves into their suburban dream home, only to discover they've inherited a nightmare.";
//            popularity = "1041.285";
//            "poster_path" = "/6RrseODZo2e66XOzC1XMzMuecnf.jpg";
//            "vote_average" = "7.866";
//            "vote_count" = 127;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/zNugnnR5KEmq9EzLcl0Me1UmHYk.jpg";
//            "first_air_date" = "2022-04-09";
//            "genre_ids" =             (
//                16,
//                35,
//                10759
//            );
//            id = 120089;
//            "media_type" = tv;
//            name = "SPY x FAMILY";
//            "origin_country" =             (
//                JP
//            );
//            "original_language" = ja;
//            "original_name" = "SPY\U00d7FAMILY";
//            overview = "Master spy Twilight is the best at what he does when it comes to going undercover on dangerous missions in the name of a better world. But when he receives the ultimate impossible assignment\U2014get married and have a kid\U2014he may finally be in over his head! Not one to depend on others, Twilight has his work cut out for him procuring both a wife and a child for his mission to infiltrate an elite private school. What he doesn't know is that the wife he's chosen is an assassin and the child he's adopted is a telepath!";
//            popularity = "744.974";
//            "poster_path" = "/3r4LYFuXrg3G8fepysr4xSLWnQL.jpg";
//            "vote_average" = "8.702999999999999";
//            "vote_count" = 843;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/oo1yZwo2qJcQtEGpEGosZQMdw5u.jpg";
//            "first_air_date" = "2022-10-21";
//            "genre_ids" =             (
//                10759,
//                16
//            );
//            id = 201213;
//            "media_type" = tv;
//            name = "ONI: Thunder God's Tale";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "ONI: Thunder God's Tale";
//            overview = "In a mystical world of Japanese gods and spirits, a courageous girl strives to follow in her mysterious father's footsteps and find her true powers.";
//            popularity = "77.559";
//            "poster_path" = "/jt1BZDjWvtPNdbnaI5gqJ36Upo6.jpg";
//            "vote_average" = "8.9";
//            "vote_count" = 6;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/6ESvUtiCv3XqJRTU9d32I4R0Ckq.jpg";
//            "first_air_date" = "2022-10-21";
//            "genre_ids" =             (
//                10764
//            );
//            id = 210922;
//            "media_type" = tv;
//            name = "28 Days Haunted";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "28 Days Haunted";
//            overview = "Three teams each spend 28 days in some of America's most haunted locations for a paranormal experiment based on the theories of Ed and Lorraine Warren.";
//            popularity = "80.73099999999999";
//            "poster_path" = "/AqcHMbvN4lkYUXKNalOxOFe025K.jpg";
//            "vote_average" = "7.857";
//            "vote_count" = 14;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/5DUMPBSnHOZsbBv81GFXZXvDpo6.jpg";
//            "first_air_date" = "2022-10-12";
//            "genre_ids" =             (
//                16,
//                10759,
//                10765,
//                35
//            );
//            id = 114410;
//            "media_type" = tv;
//            name = "Chainsaw Man";
//            "origin_country" =             (
//                JP
//            );
//            "original_language" = ja;
//            "original_name" = "\U30c1\U30a7\U30f3\U30bd\U30fc\U30de\U30f3";
//            overview = "Denji has a simple dream\U2014to live a happy and peaceful life, spending time with a girl he likes. This is a far cry from reality, however, as Denji is forced by the yakuza into killing devils in order to pay off his crushing debts. Using his pet devil Pochita as a weapon, he is ready to do anything for a bit of cash.";
//            popularity = "1322.196";
//            "poster_path" = "/npdB6eFzizki0WaZ1OvKcJrWe97.jpg";
//            "vote_average" = "8.696";
//            "vote_count" = 124;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/8kBhAP03JpPcTklJp5idCNJhRqE.jpg";
//            "first_air_date" = "2011-10-05";
//            "genre_ids" =             (
//                18,
//                9648,
//                10765
//            );
//            id = 1413;
//            "media_type" = tv;
//            name = "American Horror Story";
//            "origin_country" =             (
//                US
//            );
//            "original_language" = en;
//            "original_name" = "American Horror Story";
//            overview = "An anthology horror drama series centering on different characters and locations, including a house with a murderous past, an asylum, a witch coven, a freak show, a hotel, a farmhouse in Roanoke, a cult, the apocalypse and a summer camp.";
//            popularity = "957.9109999999999";
//            "poster_path" = "/tiuzjuzalHj377XER1sfq7XQEIT.jpg";
//            "vote_average" = "8.199999999999999";
//            "vote_count" = 4779;
//        },
//                {
//            adult = 0;
//            "backdrop_path" = "/lLSaesumAlhdmmpdUPldH2Vk4kC.jpg";
//            "first_air_date" = "2021-04-12";
//            "genre_ids" =             (
//                16,
//                18,
//                10759,
//                10765
//            );
//            id = 97525;
//            "media_type" = tv;
//            name = "To Your Eternity";
//            "origin_country" =             (
//                JP
//            );
//            "original_language" = ja;
//            "original_name" = "\U4e0d\U6ec5\U306e\U3042\U306a\U305f\U3078";
//            overview = "In the beginning, an \"orb\" is cast unto Earth. \"It\" can do two things: change into the form of the thing that stimulates \"it\"; and come back to life after death. \"It\" morphs from orb to rock, then to wolf, and finally to boy, but roams about like a newborn who knows nothing. As a boy, \"it\" becomes Fushi. Through encounters with human kindness, Fushi not only gains survival skills, but grows as a \"person\". But his journey is darkened by the inexplicable and destructive enemy Nokker, as well as cruel partings with the people he loves.";
//            popularity = "96.795";
//            "poster_path" = "/aSHhD2GYsEpOo5lWsE5m9Rw0Ure.jpg";
//            "vote_average" = "8.4";
//            "vote_count" = 148;
//        }
//    );
//    "total_pages" = 1000;
//    "total_results" = 20000;
//}
