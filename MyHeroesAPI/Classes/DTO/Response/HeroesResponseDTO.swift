//
//  HeroesResponseDTO.swift
//  MyHeroes
//
//  Created by Gilson Takaasi Gil on 31/07/19.
//  Copyright © 2019 Gilson Gil. All rights reserved.
//

import Foundation

public struct HeroesResponseDTO<T: Decodable>: Decodable {
    public let code: Int
    public let status: String
    public let copyright: String
    public let attributionText: String
    public let attributionHTML: String
    public let etag: String
    public let data: DataResponseDTO<T>
}
