//
//  CharactersRequest.swift
//  Marvel
//
//  Created by Saulo Costa on 15/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import UIKit

class CharactersRequest: AbstractRequest {

    override var path: String {
        return APIConfig.ServiceURL.Characters.list
    }
    
    override var httpMethod: HTTPMethod {
        return .get
    }
    
    override func toDictionary() -> [String : Any]? {
        let timestamp = String(NSDate().timeIntervalSince1970)
        return ["ts" : timestamp,
                "apikey" : "fb040e86734ae1cfa7800741b2a705b1",
                "hash" : Utils.getHash(withTimestamp: timestamp)]
    }
    
}
