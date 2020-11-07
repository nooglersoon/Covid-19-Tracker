//
//  ItemView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List{
            
            ForEach (westJavaData, id: \.self) {data in
                ContentsView(region: data.region, updateDate: data.updateData, confirmed: data.confirmed, recovered: data.recovered, deaths: data.deaths)
            }
        }
    }
}

struct ContentsView: View {
    
    var region: String
    var updateDate: String
    var confirmed: Int
    var recovered: Int
    var deaths: Int
    
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text("\(region)")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                Text("\(updateDate)")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            HStack(alignment: .top, spacing: 10){
                VStack(alignment: .center, spacing: 12){
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                    Text("\(confirmed)")
                        .fontWeight(.semibold)
                }
                VStack(alignment: .center, spacing: 12){
                    Image(systemName: "heart")
                        .foregroundColor(.green)
                    Text("\(recovered)")
                        .fontWeight(.semibold)
                }
                VStack(alignment: .center, spacing: 12){
                    Image(systemName: "exclamationmark")
                        .foregroundColor(.red)
                    Text("\(deaths)")
                        .fontWeight(.semibold)
                }
            }.font(.footnote)
            
        }.padding()
            .padding(.vertical, 2.0)
        
    }
}

struct ContentsView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentsView(region: "Kota Bandung", updateDate: "10", confirmed: 10, recovered: 10, deaths: 0)
        ListView()
    }
}
