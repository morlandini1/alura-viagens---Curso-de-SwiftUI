//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 01/12/21.
//  Copyright © 2021 Marcio Orlandini. All rights reserved.
//

import SwiftUI

    

struct SecaoPacotesView: View {
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(self.pacotes) { pacote in
                        PacotesViagensView(pacoteDeViagem: pacote)
                    }
                }
            }
        }
        .frame(height: 300)
        .background(Color(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacotesDeViagens[0].categoria.rawValue, pacotes: pacotesDeViagens)
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
