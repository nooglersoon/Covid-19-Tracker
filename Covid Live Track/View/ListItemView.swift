//
//  ListItemView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 29/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        List {
            ForEach (0...10){ i in
                ItemView(westJavaData[i].region, confirmed: westJavaData[i].confirmed, recovered: westJavaData[i].recovered, deaths: westJavaData[i].deaths, update: westJavaData[i].updateData)
            }
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
