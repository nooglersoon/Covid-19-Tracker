//
//  HeaderData.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 29/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import Foundation

struct HeaderData {
    
    var region: String
    var confirmed: Int
    var recovered: Int
    var deaths: Int
    var collection: [Int]
    
}

var headerData: [HeaderData] = [

    HeaderData(region: "Jawa Barat", confirmed: 3091, recovered: 1520, deaths: 175, collection: [50,60,65,75,40,30,60]),
    HeaderData(region: "Indonesia", confirmed: 54010, recovered: 22936, deaths: 2754, collection: [40,45,55,60,65,70,90]),
    HeaderData(region: "Worldwide", confirmed: 10072616, recovered: 5100637, deaths: 500882, collection: [50,60,70,60,70,80,80])

]
