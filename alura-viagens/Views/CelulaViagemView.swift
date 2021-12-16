//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 29/11/21.
//  Copyright © 2021 Marcio Orlandini. All rights reserved.
//

import SwiftUI

struct CelulaViagemView: View {

    var viagem: Viagem
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {

        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: self.horizontalSizeClass == .compact ? 125 : 200)
                .clipped()

            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
            .previewLayout(.fixed(width: 250, height: 600))
    }
}
