//
//  CharactersRequestDTO.swift
//  MyHeroes
//
//  Created by Gilson Gil on 30/07/19.
//  Copyright © 2019 Gilson Gil. All rights reserved.
//

import Foundation

public struct CharactersRequestDTO: Encodable {
    let orderBy: String
    let limit: Int
    let offset: Int
    static let defaultOrderBy: String = "-modified"

    enum CodingKeys: String, CodingKey {
        case limit
        case offset
        case orderBy
    }

    public init(offset: Int, limit: Int, orderBy: String? = nil) {
        self.offset = offset
        self.limit = limit
        self.orderBy = orderBy ?? CharactersRequestDTO.defaultOrderBy
    }
}
