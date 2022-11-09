//
//  ResultsStats.swift
//  ConsumoAPI
//
//  Created by MacBookMBA5 on 04/11/22.
//

import Foundation
struct Results : Decodable{
    var results : [ResultsStats]
}

struct ResultsStats : Decodable{
    var name : Name = Name()
    var email : String
    var city : Location = Location()
    var picture : Picture = Picture()
    
}
struct Name : Decodable{
    var firts : String?
}
struct Location : Decodable{
    var city : String?
}
struct Picture : Decodable{
    var large : String?
}
