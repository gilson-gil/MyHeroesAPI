//
//  ViewController.swift
//  MyHeroesAPI
//
//  Created by gilson-gil on 08/04/2019.
//  Copyright (c) 2019 gilson-gil. All rights reserved.
//

import UIKit

import MyHeroesAPI

class ViewController: UIViewController {
    let engine: NetworkEngine<HeroesService> = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let list: HeroesService = .list(pageSize: 20, offset: 0)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        engine.request(target: list, decoder: decoder) { (result: Result<HeroesResponseDTO<Character>?, NetworkError>) in
            switch result {
            case .success(let response):
                print(response?.data.results.first?.name)
            case .failure(let error):
                print(error)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

