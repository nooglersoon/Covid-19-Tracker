//
//  Statistics.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct Statistics: View {
    
    var mainViewArray = [["West Java","green"],["Indonesia","red"],["Worldwide","blue"]]
    
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack {
                        ForEach (0..<3){ i in
                            HeaderView(self.mainViewArray[i][0], self.mainViewArray[i][1],confirmed: headerData[i].confirmed,recovered: headerData[i].recovered,deaths: headerData[i].deaths).padding(10)
                        }
                    }.padding()
                }
                ListView()
            }
            .navigationBarTitle(Text("Covid Live Stats").fontWeight(.thin))
        }
        
    }
    
    
}

struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Statistics()
//            .environment(\.colorScheme, .dark)
    }
}
