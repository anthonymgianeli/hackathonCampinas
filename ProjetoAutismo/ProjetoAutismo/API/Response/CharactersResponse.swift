//
//  CharactersResponse.swift
//  Marvel
//
//  Created by Saulo Costa on 15/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import UIKit
import Foundation

class CharactersResponse: AbstractResponse {

    var list: [Character]?
    
    override func parseModel() throws {
        guard let data = data else { return }
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let response = try decoder.decode(CharactersResponseItem.self, from: data)
        list = response.data?.results
    }
}


struct CharactersResponseItem: Codable {
    let code: Int?
    let status, copyright, attributionText, attributionHTML: String?
    let etag: String?
    let data: CharactersDataClass?
}

struct CharactersDataClass: Codable {
    let offset, limit, total, count: Int?
    let results: [Character]?
}
