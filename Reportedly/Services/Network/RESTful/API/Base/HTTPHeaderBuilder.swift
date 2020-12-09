//
//  HTTPHeaderBuilder.swift
//  Reportedly
//
//  Created by Mikey Pham on 12/8/20.
//  Copyright © 2020 NimbleHQ. All rights reserved.
//

import Alamofire

class HTTPHeaderBuilder {

    // MARK: - Public Variables
    static var shared = HTTPHeaderBuilder()

    var authenticatedHeader: HTTPHeaders {
        HTTPHeaders(["Authorization": "Bearer \(AuthenticationAPIService.shared.token)"])
    }
    
    var normalHeader: HTTPHeaders {
        HTTPHeaders([])
    }
}
