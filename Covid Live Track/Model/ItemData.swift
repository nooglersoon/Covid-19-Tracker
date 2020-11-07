//
//  ItemData.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 29/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import Foundation

struct ItemData: Identifiable, Hashable {
    
    var id: Int
    var region: String
    var confirmed: Int
    var recovered: Int
    var deaths: Int
    var updateData: String
    
    
}

var westJavaData: [ItemData] = [
    
    .init(id: 1, region: "Kota Bandung", confirmed: 365, recovered: 229, deaths: 40, updateData: "27 June 2020"),
    .init(id: 2, region: "Kota Bekasi", confirmed: 541, recovered: 215, deaths: 32, updateData: "27 June 2020"),
    .init(id: 3, region: "Kota Depok", confirmed: 719, recovered: 365, deaths: 31, updateData: "27 June 2020"),
    .init(id: 4, region: "Kota Bogor", confirmed: 145, recovered: 82, deaths: 13, updateData: "27 June 2020"),
    .init(id: 5, region: "Kota Tasikmalaya", confirmed: 26, recovered: 10, deaths: 2, updateData: "27 June 2020"),
    .init(id: 6, region: "Kota Banjar", confirmed: 8, recovered: 6, deaths: 1, updateData: "27 June 2020"),
    .init(id: 7, region: "Kota Cirebon", confirmed: 13, recovered: 6, deaths: 1, updateData: "27 June 2020"),
    .init(id: 8, region: "Garut", confirmed: 26, recovered: 15, deaths: 3, updateData: "27 June 2020"),
    .init(id: 9, region: "Indramayu", confirmed: 22, recovered: 8, deaths: 3, updateData: "27 June 2020"),
    .init(id: 10, region: "Sukabumi", confirmed: 30, recovered: 23, deaths: 0, updateData: "27 June 2020"),
    .init(id: 11, region: "Cianjur", confirmed: 21, recovered: 2, deaths: 1, updateData: "27 June 2020"),
    .init(id: 12, region: "Subang", confirmed: 56, recovered: 17, deaths: 2, updateData: "27 June 2020"),
    .init(id: 13, region: "Karawang", confirmed: 24, recovered: 10, deaths: 0, updateData: "27 June 2020"),
    
]
