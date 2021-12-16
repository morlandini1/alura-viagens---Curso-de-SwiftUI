//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 14/12/21
//  Copyright © 2021 Ândriu Felipe Coelho. All rights reserved.
//

import SwiftUI

struct ListaDePacotesView: View {

    //MARK: Atributo

    var categorias: [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagens, by: {
            $0.categoria.rawValue
        })
    }

    var body: some View {
        NavigationView {
            List{
                ForEach(categorias.keys.sorted(), id: \.self) {
                    chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)

                }
            }
            .navigationBarTitle("Pacotes")
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
