//
//  Movie.swift
//  TrendMedia
//
//  Created by 한상민 on 2022/07/20.
//

import Foundation

struct JMovie {
    var title: String
    var releaseDate: String
    var runtime: Int
    var overview: String
    var rate: Double
    var movieDescription: String{
        get{
            return "\(releaseDate) | \(runtime)분 | \(rate)점"
        }
    }
}
