//
//  ContentView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView{
                
                Statistics()
                    .tabItem{
                        Image(systemName: "chart.bar.fill")
                        Text("Stats")
                    }
                
                Maps()
                    .edgesIgnoringSafeArea(.top)
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Maps")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
