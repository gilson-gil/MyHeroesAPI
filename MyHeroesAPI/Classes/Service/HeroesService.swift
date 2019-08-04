//
//  HeroesService.swift
//  MyHeroes
//
//  Created by Gilson Takaasi Gil on 30/07/19.
//  Copyright © 2019 Gilson Gil. All rights reserved.
//

import Foundation

public enum HeroesService {
    case list(pageSize: Int, offset: Int)
    case uri(url: String)
}

extension HeroesService: Service {
    public var baseURL: URL? {
        switch self {
        case .uri:
            return nil
        default:
            return URL(string: "https://gateway.marvel.com")
        }
    }

    public var path: String {
        switch self {
        case .list:
            return "/v1/public/characters"
        case .uri:
            return ""
        }
    }

    public var absoluteURL: URL? {
        switch self {
        case .list:
            return baseURL?.appendingPathComponent(path)
        case .uri(let url):
            return URL(string: url)
        }
    }

    public var method: Method {
        return .get
    }

    public var parameters: Parameters? {
        var parameters: Parameters?
        switch self {
        case .list(let pageSize, let offset):
            parameters = CharactersRequestDTO(offset: offset, limit: pageSize).parameters
        case .uri:
            parameters = [:]
        }
        if let authorizationParameters = AuthorizationParametersDTO().parameters {
            parameters?.merge(authorizationParameters) { lhs, _ in lhs }
        }
        return parameters
    }
}
