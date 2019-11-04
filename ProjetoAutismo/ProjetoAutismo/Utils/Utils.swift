//
//  Utils.swift
//  Marvel
//
//  Created by Saulo Costa on 15/05/19.
//  Copyright © 2019 Saulo. All rights reserved.
//

import Foundation
import CommonCrypto

class Utils: NSObject {
    
     class func md5(_ string: String) -> String {
        
        let context = UnsafeMutablePointer<CC_MD5_CTX>.allocate(capacity: 1)
        var digest = Array<UInt8>(repeating:0, count:Int(CC_MD5_DIGEST_LENGTH))
        CC_MD5_Init(context)
        CC_MD5_Update(context, string, CC_LONG(string.lengthOfBytes(using: String.Encoding.utf8)))
        CC_MD5_Final(&digest, context)
        context.deallocate()
        var hexString = ""
        for byte in digest {
            hexString += String(format:"%02x", byte)
        }
        
        return hexString
    }
    
    class func getHash(withTimestamp timestamp: String) -> String {
        return Utils.md5(timestamp+"9ba4edd065daa219fc9a71edf4f2f342c51bd2ac"+"fb040e86734ae1cfa7800741b2a705b1")
    }
}

