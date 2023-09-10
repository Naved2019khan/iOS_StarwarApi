//
//  Film.swift
//  AlmoFireDemo
//
//  Created by Naved Khan on 10/05/23.
//

import Foundation
import UIKit
struct Films: Decodable {
  let count: Int
  let all: [Film] // result
  enum CodingKeys: String, CodingKey {
    case count
    case all = "results"
  }
}

struct Film: Decodable {
  let id: Int
  let title: String
  let openingCrawl: String
  let director: String
  let producer: String
  let releaseDate: String
  let starships: [String]
    
  // to rename key
  enum CodingKeys: String, CodingKey {
    case id = "episode_id"
    case title
    case openingCrawl = "opening_crawl"
    case director
    case producer
    case releaseDate = "release_date"
    case starships
  }
}


