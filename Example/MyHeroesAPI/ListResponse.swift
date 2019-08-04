//
//  ListResponse.swift
//  MyHeroesAPI_Example
//
//  Created by Gilson Gil on 04/08/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

struct ListResponse: Decodable {
    let available: Int
    let items: [ItemResponse]
}
