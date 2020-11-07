//
//  SpatialData.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 29/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import Foundation
import MapKit

struct CoronaMap {
    let id = UUID()
    let name: String
    let location: CLLocationCoordinate2D
}

var westJavaMap: [CoronaMap] = [
    CoronaMap(name: "Kota Bandung", location: .init(latitude: -6.90389, longitude: 107.61861)),
    CoronaMap(name: "Kota Bekasi", location: .init(latitude: -6.2349, longitude: 106.9896)),
    CoronaMap(name: "Kota Depok", location: .init(latitude: -6.4, longitude: 106.81861)),
    CoronaMap(name: "Kota Bogor", location: .init(latitude: -6.59444, longitude: 106.78917)),
    CoronaMap(name: "Kota Tasikmalaya", location: .init(latitude: -7.3274, longitude: 108.2207)),
    CoronaMap(name: "Banjar", location: .init(latitude: -7.374585, longitude: 108.558189)),
    CoronaMap(name: "Kota Cirebon", location: .init(latitude: -6.737246, longitude: 108.550659)),
    CoronaMap(name: "Kota Garut", location: .init(latitude: -7.227906, longitude: 107.908699)),
    CoronaMap(name: "Indramayu", location: .init(latitude: -6.327583, longitude: 108.324936)),
    CoronaMap(name: "Sukabumi", location: .init(latitude: -6.923700, longitude: 106.928726)),
    CoronaMap(name: "Cianjur", location: .init(latitude: -6.8168, longitude: 107.1425)),
    CoronaMap(name: "Subang", location: .init(latitude: -6.5623, longitude:
        107.7608)),
    CoronaMap(name: "Karawang", location: .init(latitude: -6.3054, longitude: 107.3202))
]
