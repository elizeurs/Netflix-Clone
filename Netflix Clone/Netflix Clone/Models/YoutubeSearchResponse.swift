//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Elizeu RS on 28/10/22.
//

import Foundation

struct YoutubeSearchResponse: Codable {
  let items: [VideoElement]
}

struct VideoElement: Codable {
  let id: IdVideoElement
}

struct IdVideoElement: Codable {
  let kind: String?
  let videoId: String?
}



//{
//    etag = bl6bqGG0RyantWwYgX1qvk3c2kI;
//    items =     (
//                {
//            etag = RqEak7Hdq5K2rJkMlegfHl3vcco;
//            id =             {
//                kind = "youtube#playlist";
//                playlistId = "PL52FtO_uAiBJ0FBH_okVXHNtpgJBA4CZ4";
//            };
//            kind = "youtube#searchResult";
//        },
//                {
//            etag = "p-bDUohGtqk4FCrbKgpr-BiTVhQ";
//            id =             {
//                kind = "youtube#video";
//                videoId = Luq2aEeRoKQ;
//            };
//            kind = "youtube#searchResult";
//        },
//                {
//            etag = pgzECzaXiRDn2EjviTeiOTv2Zu4;
//            id =             {
//                kind = "youtube#video";
//                videoId = SsAlZZaQWJU;
//            };
//            kind = "youtube#searchResult";
//        },
//                {
//            etag = "AtdoVvU1u2IzPXBP9_lWJTZvhKo";
//            id =             {
//                kind = "youtube#video";
//                videoId = fpkQ0i7DJes;
//            };
//            kind = "youtube#searchResult";
//        },
//                {
//            etag = 0kgN4FLcnUS7qvmC5UUanorl10U;
//            id =             {
//                kind = "youtube#video";
//                videoId = "pvtOW-_UehU";
//            };
//            kind = "youtube#searchResult";
//        }
//    );
//    kind = "youtube#searchListResponse";
//    nextPageToken = CAUQAA;
//    pageInfo =     {
//        resultsPerPage = 5;
//        totalResults = 1000000;
//    };
//    regionCode = BR;
//}

