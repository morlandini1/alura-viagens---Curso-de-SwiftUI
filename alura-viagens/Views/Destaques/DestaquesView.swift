//
//  DestaquesView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 17/12/21.
//  Copyright © 2021 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct DestaquesView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 210 : 310, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
   
struct DestaquesView_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesView()
    }
}
