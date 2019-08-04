//
//  UrlService.swift
//  MyHeroes
//
//  Created by Gilson Takaasi Gil on 31/07/19.
//  Copyright © 2019 Gilson Gil. All rights reserved.
//

import Foundation

public enum UrlService {
    case image(urlString: String)
}

extension UrlService: Service {
    public var baseURL: URL? {
        return nil
    }

    public var path: String {
        return ""
    }

    public var absoluteURL: URL? {
        switch self {
        case .image(let urlString):
            return URL(string: urlString)
        }
    }

    public var method: Method {
        return .get
    }

    public var parameters: Parameters? {
        return nil
    }
}
