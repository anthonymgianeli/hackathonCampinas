//
//  HTTPMethod.swift
//  Marvel
//
//  Created by Saulo Costa on 14/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation

enum HTTPMethod {
    case get
    case post
    case put
}

extension HTTPMethod {
    var method: String {
        switch self {
        case .get:  return "GET"
        case .post: return "POST"
        case .put: return "PUT"
        }
    }
}
