//
//  MapView.swift
//  SapirmenAPP
//
//  Created by Muhammed ikbal TAŞKIN on 17.07.2023.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: superKahramanDizisi[0].koordinatLokasyonu)
    }
}
