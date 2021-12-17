//
//  MapaView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 29/11/21.
//  Copyright © 2021 Marcio Orlandini. All rights reserved.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {

    var coordenada: CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }

}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordenada: viagens[0].localizacao)
    }
}
