//
//  MapView.swift
//  EasternMarket
//
//  Created by John Ray on 2/8/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3498, longitude: -83.0408), span: MKCoordinateSpan(latitudeDelta: 0.010, longitudeDelta: 0.010))
    
    let locations = [
        Location(name: "Shed 2", coordinate:
                    CLLocationCoordinate2D(latitude: 42.3465, longitude: -83.0399)),
        Location(name: "Shed 3", coordinate:
                    CLLocationCoordinate2D(latitude: 42.34720, longitude: -83.04038)),
        Location(name: "Office", coordinate:
                    CLLocationCoordinate2D(latitude: 42.349182, longitude: -83.041969)),
        Location(name: "Shed 4", coordinate:
                    CLLocationCoordinate2D(latitude: 42.34787, longitude: -83.04081)),
        Location(name: "Shed 5", coordinate:
                    CLLocationCoordinate2D(latitude: 42.348496, longitude: -83.040941)),
        Location(name: "Shed 6", coordinate:
                    CLLocationCoordinate2D(latitude:     42.34920, longitude: -83.04079))
        
    ]
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion,
                annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text(location.name)
                    } label: {
                        
                            Image("Pin")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .ignoresSafeArea()
                                
                    }
                }
            }
                .navigationTitle("Map")
        }
          
    }
    }








struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
