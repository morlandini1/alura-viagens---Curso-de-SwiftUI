//
//  ContentView.swift
//  alura-viagens
//
//  Created by Marcio Orlandini on 29/11/21.
//  Copyright ©2021 Marcio Orlandini. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
            ListaDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
         }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
