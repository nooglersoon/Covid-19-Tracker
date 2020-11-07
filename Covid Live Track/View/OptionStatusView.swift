//
//  OptionStatusView.swift
//  Covid Live Track
//
//  Created by Fauzi Achmad Bangsa Diria on 27/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import SwiftUI

struct OptionStatusView: View {
    var body: some View {
        ShowStatus()
    }
}

struct OptionStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ShowStatus()
    }
}

struct ShowStatus: View {
    
    var body: some View {
        
        ZStack {
            
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 40) {
                Spacer()
                Text("Current Status")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                
                HealthCard()
                DangerArea()
                Spacer()
                Text("Covid Tracker by Fauzi Achmad B D")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
            }
            
        }
        
    }
    
}

struct DangerArea: View {
    
    var body: some View {
        
        ZStack {
            Image("red").frame(height: 200.0)
            HStack {
                Spacer()
                VStack(alignment: .center
                ) {
                    Image(systemName: "exclamationmark.square")
                        .font(.title)
                    Text("You Are in Red Area")
                        .font(.headline)
                        .fontWeight(.bold)
                        .bold()
                        .padding()
                    Text("Staying here is a risk, potentially infected")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                } .foregroundColor(.white)
                Spacer()
            }.padding().frame(width: 300.0, height: 150.0)
        }
        .cornerRadius(10)
        .shadow(radius: 1)
    }
    
    
    
}


struct SafeArea: View {
    
    var body: some View {
        
        ZStack {
            Image("green").frame(height: 200.0)
            HStack {
                Spacer()
                VStack(alignment: .center
                ) {
                    Image(systemName: "staroflife")
                        .font(.title)
                    Text("You Are in Green Area")
                        .font(.headline)
                        .fontWeight(.bold)
                        .bold()
                        .padding()
                    Text("Stay safe, stay health! :)")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                } .foregroundColor(.white)
                Spacer()
            }.padding().frame(width: 300.0, height: 150.0)
        }
        .cornerRadius(10)
        .shadow(radius: 1)
        
    }
    
}


struct HealthCard: View {
    
    var body: some View {
        
        ZStack {
            Image("blue").frame(height: 150.0)
            HStack {
                Spacer()
                VStack(alignment: .center
                ) {
                    Spacer()
                    Image(systemName: "bandage")
                        .font(.headline)
                    
                    Text("Fauzi's Health Card")
                        .fontWeight(.bold)
                    Text("Citizen ID: 01298XT")
                        .font(.caption)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    Text("Body Temperature: 36C")
                        .font(.footnote)
                        .fontWeight(.medium)
                        .bold()
                    Text("Body Conditions: FIT")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .bold()
                    Spacer()
                    
                } .foregroundColor(.white)
    
                Spacer()
            }
        }
        .cornerRadius(10)
        .shadow(radius: 1)
        .frame(width: 300.0, height: 150.0)
    }
    
    
    
}
