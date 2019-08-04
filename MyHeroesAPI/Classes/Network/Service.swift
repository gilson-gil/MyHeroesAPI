//
//  Service.swift
//  MyHeroes
//
//  Created by Gilson Takaasi Gil on 30/07/19.
//  Copyright © 2019 Gilson Gil. All rights reserved.
//

import Foundation

public protocol Service {
    var baseURL: URL? { get }
    var path: String { get }
    var absoluteURL: URL? { get }
    var method: Method { get }
    var parameters: Parameters? { get }
}
