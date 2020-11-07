//
//  NewView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

// THIS FOR TESTING NEW FEATURES VIEW ONLY

import SwiftUI

struct NewView: View {
        
    @State var flipped = false // state variable used to update the card
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(self.flipped ? .red : .blue) // change the card color when flipped
            .padding()
            .rotation3DEffect(self.flipped ? Angle(degrees: 180): Angle(degrees: 0), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
            .animation(.default) // implicitly applying animation
            .onTapGesture {
                // explicitly apply animation on toggle (choose either or)
                //withAnimation {
                    self.flipped.toggle()
                //}
        }
        
    }
        
    }

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
