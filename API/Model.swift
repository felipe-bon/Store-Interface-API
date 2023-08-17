//
//  Model.swift
//  API
//
//  Created by Student07 on 04/08/23.
//

import Foundation

struct Rating: Codable {
    let rate: Float?;
    let count: Int?;
}

struct Produto: Codable, Identifiable {
    
    let id: Int;
    let title: String?;
    let description: String?;
    let category: String?;
    let image: String?;
    let rating: Rating?;
}
