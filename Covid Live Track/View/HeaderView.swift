//
//  HeaderView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    @State private var flipped = false
    var wilayah: String
    var warna: String
    var confirmed: Int
    var recovered: Int
    var deaths: Int
    
    var body: some View {
        let flipDegrees = flipped ? 180.0 : 0
        
        return VStack {
            ZStack() {
                MainView(wilayah, warna, confirmed: confirmed, recovered: recovered, deaths: deaths).flipRotate(flipDegrees).opacity(flipped ? 0.0 : 1.0)
                    
                SecondView(wilayah, warna).flipRotate(-180 + flipDegrees).opacity(flipped ? 1.0 : 0.0)
                    
            }.animation(.easeInOut(duration: 0.8))
            .onTapGesture { self.flipped.toggle() }
        }
    }
    
    init(_ wilayah: String,_ warna: String, confirmed: Int, recovered: Int, deaths: Int){
        
        self.wilayah = wilayah
        self.warna = warna
        self.confirmed = confirmed
        self.recovered = recovered
        self.deaths = deaths
        
    }
    
}

struct MainView: View {
    
    @State private var flipped = false
    
    var wilayah: String
    var warna: String
    var img: String
    var confirmed: Int
    var recovered: Int
    var deaths: Int
    
    
    var body: some View {
      // Container to add background and corner radius to
        ZStack {
                        Image("\(warna)")
                        HStack {
                            Spacer()
                            VStack(alignment: .center
                            ) {
                                Image("\(img)")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                
                                Text("\(wilayah)")
                                    .font(.title)
                                    .bold()
                                Text("Today")
                                    .font(.subheadline)
                                    .padding(.bottom)
                                    .frame(width: 150)
                                HStack(spacing: 10) {
                                    VStack(alignment: .center) {
                                        Text("Confirmed").fontWeight(.bold)
                                        Text("\(confirmed)")
                                            .fontWeight(.bold)
                                    }
                                    VStack(alignment: .center) {
                                        Text("Recovered")
                                            .fontWeight(.bold)
                                        Text("\(recovered)")
                                            .fontWeight(.bold)
                                    }
                                    VStack(alignment: .center) {
                                        Text("Deaths")
                                            .fontWeight(.bold)
                                        Text("\(deaths)")
                                            .fontWeight(.bold)
                                    }
                                }
                                .font(.caption)
                                .padding()
                            } .foregroundColor(.white)
                            Spacer()
                        }.padding().frame(width: 300.0, height: 250.0)
                    }
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    
    }
    
    init(_ wilayah: String, _ warna: String, confirmed: Int, recovered: Int, deaths: Int) {
        self.wilayah = wilayah
        self.warna = warna
        self.img = wilayah
        self.confirmed = confirmed
        self.recovered = recovered
        self.deaths = deaths
    }

}

    

struct SecondView: View {
    var wilayah: String
    var warna: String
    var img: String
    var body: some View {
      // Container to add background and corner radius to
        ZStack {
            Image("\(warna)")
            HStack {
                
                Spacer()
                VStack(alignment: .center
                ) {
                    HStack{
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 50)
                                Text("S")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 55)
                                Text("M")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 70)
                                Text("T")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 85)
                                Text("W")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 35)
                                Text("T")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 80)
                                Text("F")
                                .font(.footnote)
                        }
                        VStack{
                            Spacer()
                            Capsule().frame(width: 5, height: 90)
                                Text("S")
                                .font(.footnote)
                        }
                    }
                    Spacer()
                    Text("\(wilayah)")
                        .font(.title)
                        .bold()
                    Text("in a week")
                        .font(.subheadline)
                        .padding(.bottom)
                        .frame(width: 150)
                } .foregroundColor(.white)
                Spacer()
            }.padding().frame(width: 300.0, height: 250.0)
        }
        .cornerRadius(10)
        .shadow(radius: 1)
    }
    
    init(_ wilayah: String, _ warna: String) {
        self.wilayah = wilayah
        self.warna = warna
        self.img = wilayah
    }
    
}

extension View {

      func flipRotate(_ degrees : Double) -> some View {
            return rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: -0.5, z: 0.0))
      }

      func placedOnCard(_ color: Color) -> some View {
            return padding(5).frame(width: 250, height: 150, alignment: .center).background(color)
      }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView("Jawa Barat", "blue",confirmed: 0, recovered: 0, deaths: 0)
    }
}
