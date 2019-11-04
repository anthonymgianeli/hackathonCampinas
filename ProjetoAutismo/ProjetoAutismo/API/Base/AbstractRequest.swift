//
//  AbstractRequest.swift
//  Marvel
//
//  Created by Saulo Costa on 14/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation

class AbstractRequest {
    
    var path : String {
        preconditionFailure("This method must be overridden")
    }
    
    var headers : [String: String] {
        return ["Content-Type" : "application/json"]
    }
    
    var httpMethod : HTTPMethod {
        preconditionFailure("This method must be overridden")
    }
    
    public init() {}
    
    func toDictionary()-> [String : Any]? {
        preconditionFailure("This method must be overridden")
    }
    
}


extension AbstractRequest: Encodable
{
    func encode(to encoder: Encoder) throws
    {
        preconditionFailure("This method must be overridden")
    }
}
