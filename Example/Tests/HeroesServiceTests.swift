//
//  HeroesServiceTests.swift
//  MyHeroesAPI_Example
//
//  Created by Gilson Takaasi Gil on 06/08/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

@testable import MyHeroesAPI

import Quick
import Nimble

final class HeroesServiceSpec: QuickSpec {
    override func spec() {
        describe("given a heroes service") {
            context("list service") {
                let service: HeroesService = .list(pageSize: 20, offset: 0)
                it("should create valid url") {
                    expect(service.method).to(equal(.get))
                    expect(service.baseURL?.absoluteString).to(equal("https://gateway.marvel.com"))
                    expect(service.path).to(equal("/v1/public/characters"))
                    expect(service.parameters?["orderBy"] as? String).to(equal(CharactersRequestDTO.defaultOrderBy))
                    expect(service.parameters?["limit"] as? Int).to(equal(20))
                    expect(service.parameters?["offset"] as? Int).to(equal(0))
                    expect(service.parameters?["apikey"] as? String).to(equal(Constants.marvelPublicKey.rawValue))
                }
            }

            context("uri service") {
                let url = "http://gateway.marvel.com/v1/public/characters/1017603"
                let service: HeroesService = .uri(url: url)
                it("should create valid url") {
                    expect(service.method).to(equal(.get))
                    expect(service.absoluteURL?.absoluteString).to(equal(url))
                    expect(service.parameters?["apikey"] as? String).to(equal(Constants.marvelPublicKey.rawValue))
                }
            }
        }
    }
}
