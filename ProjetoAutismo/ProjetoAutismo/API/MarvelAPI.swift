//
//  MarvelAPI.swift
//  Marvel
//
//  Created by Saulo Costa on 15/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation


struct MarvelAPI {

    static let shared = MarvelAPI()
    
    public func getCharacters( success: @escaping (_ list: [Character]) -> (), failure: @escaping (ResponseError) -> ()) {
        let request = CharactersRequest()
        
        Network.sharedInstance.request(request: request) { (response: CharactersResponse) in
            
            if let list = response.list {
                success(list)
            } else {
                failure(response.responseError())
            }
        }
    }
}
