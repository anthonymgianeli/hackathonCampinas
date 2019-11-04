//
//  APIConfig.swift
//  Marvel
//
//  Created by Saulo Costa on 14/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation

enum ServiceType : Int {
    case homol
    case prod
}


struct APIConfig {
    
    public struct ServiceURL {
        public struct Base {
            
            public static var ServiceMode   : ServiceType = .homol

            static  let Scheme : String = "https"

            private static let HomolDomain  : String = "gateway.marvel.com"
            private static let ProdDomain   : String = "gateway.marvel.com"

            private static let HomoBasePath : String = "/v1/public"
            private static let ProdBasePath : String = "/v1/public"
            
            static var Domain : String {
                get {
                    switch ServiceMode {
                    case .homol:
                        return Base.HomolDomain
                    case .prod:
                        return Base.ProdDomain
                    }
                }
            }
            
            static var BasePath : String {
                get {
                    switch ServiceMode {
                    case .homol:
                        return Base.HomoBasePath
                    case .prod:
                        return Base.ProdBasePath
                    }
                }
            }
            
        }
        
        struct Characters {
            static let list : String = "/characters"
            static let detail : String = "/characters/"
        }
        
        static func MountURL(path : String, params : [String : String] = [:] ) -> URL {
            
            var urlComponents = URLComponents()
            urlComponents.scheme = Base.Scheme
            
            let base = Base.BasePath
            urlComponents.host = Base.Domain
            urlComponents.path = base + path
            
            urlComponents.queryItems = [URLQueryItem]()
            
            for (key, value) in params {
                urlComponents.queryItems?.append(URLQueryItem(name: key, value: value))
            }
            
            return urlComponents.url!
        }
    }
    
}
