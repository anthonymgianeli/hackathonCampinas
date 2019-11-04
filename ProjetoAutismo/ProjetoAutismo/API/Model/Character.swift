//
//  Character.swift
//  Marvel
//
//  Created by Saulo Costa on 15/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation

struct Character: Codable {
    let id: Int?
    let name, description: String?
    let modified: Date?
    let thumbnail: Thumbnail?
    let resourceURI: String?
    let comics, series: Comics?
    let stories: Stories?
    let events: Comics?
    let urls: [URLElement]?
}

struct Comics: Codable {
    let available: Int?
    let collectionURI: String?
    let items: [ComicsItem]?
    let returned: Int?
}

struct ComicsItem: Codable {
    let resourceURI: String?
    let name: String?
}

struct Stories: Codable {
    let available: Int?
    let collectionURI: String?
    let items: [StoriesItem]?
    let returned: Int?
}

struct StoriesItem: Codable {
    let resourceURI: String?
    let name: String?
    let type: ItemType?
}

enum ItemType: String, Codable {
    case cover = "cover"
    case empty = ""
    case interiorStory = "interiorStory"
    case pinup = "pinup"
}

struct Thumbnail: Codable {
    let path: String?
    let thumbnailExtension: String?
    
    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

enum Extension: String, Codable {
    case gif = "gif"
    case jpg = "jpg"
}

struct URLElement: Codable {
    let type: URLType?
    let url: String?
}

enum URLType: String, Codable {
    case comiclink = "comiclink"
    case detail = "detail"
    case wiki = "wiki"
}
