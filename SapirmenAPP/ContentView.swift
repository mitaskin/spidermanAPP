//
//  ContentView.swift
//  SapirmenAPP
//
//  Created by Muhammed ikbal TAŞKIN on 17.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(superKahramanDizisi) { superKahramanX in
                NavigationLink(
                    destination: DetayView(secilenKahraman: superKahramanX),
                    label: {Text(superKahramanX.isim)}
                )}.navigationTitle(Text(" Kahramanlar A.Ş."))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
