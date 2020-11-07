//
//  MapView.swift
//  Covid Live Track App
//
//  Created by Fauzi Achmad Bangsa Diria on 26/06/20.
//  Copyright © 2020 nooglersoon. All rights reserved.
//

import MapKit
import SwiftUI


struct Maps: View {
    @State var showDetailView = false
    @State var coronaMap: [CoronaMap] = westJavaMap
    
    var body: some View {
        
        ZStack{
            MapView(coronaMap: $coronaMap)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.showDetailView.toggle() }, label: {
                            Image(systemName: "location.circle") .font(.largeTitle) .foregroundColor(.white)
                        }) .padding()
                            .padding(.bottom, 10)
                    Spacer()
                }
            }
        } .sheet(isPresented: self.$showDetailView) {
            StatusView()
        }
    }
}

struct MapView: UIViewRepresentable {
    
    @Binding var coronaMap: [CoronaMap]
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        updateAnnotations(from: uiView)
        // set coordinates (lat lon)
        let coords = CLLocationCoordinate2D(latitude: -7.0909, longitude: 107.6689)

        // set span (radius of points)
        let span = MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5)

        // set region
        let region = MKCoordinateRegion(center: coords, span: span)

        // set the view
        uiView.setRegion(region, animated: true)
    }

    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
      let newAnnotations = coronaMap.map { CoronaMapAnnotation(coronaMap: $0) }
      mapView.addAnnotations(newAnnotations)
    }
    
}

struct StatusView: View {
    
    var body: some View {
        
        ShowStatus()
    }
    
}

final class CoronaMapAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(coronaMap : CoronaMap) {
        self.title = coronaMap.name
        self.coordinate = coronaMap.location
    }
}

// MGLMapView,MGLStyle

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
            .environment(\.colorScheme, .dark)
    }
}


