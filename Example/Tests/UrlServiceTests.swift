//
//  UrlServiceTests.swift
//  MyHeroesAPI_Example
//
//  Created by Gilson Takaasi Gil on 06/08/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

@testable import MyHeroesAPI

import Quick
import Nimble

final class UrlServiceSpec: QuickSpec {
    override func spec() {
        describe("given a url service") {
            context("image service") {
                let url = "http://i.annihil.us/u/prod/marvel/i/mg/c/90/54edf8eb8f102.jpg"
                let service: UrlService = .image(urlString: url)
                it("should create valid url") {
                    expect(service.method).to(equal(.get))
                    expect(service.absoluteURL?.absoluteString).to(equal(url))
                }
            }
        }
    }
}

