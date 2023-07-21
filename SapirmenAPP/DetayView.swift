//
//  DetayView.swift
//  SapirmenAPP
//
//  Created by Muhammed ikbal TAŞKIN on 17.07.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : Superkahraman
    var body: some View {
        VStack{
            MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.all)
            
            OzelGorselView(image: Image(secilenKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9,
                       height: UIScreen.main.bounds.height * 0.3,
                       alignment: .center)
                .offset(y:UIScreen.main.bounds.height * -0.25)
            
            VStack{
                
                HStack{
                    Text(secilenKahraman.isim)
                        .font(.title2)
                        .foregroundColor(.blue)
                    Spacer()
                    Text(secilenKahraman.gercekIsım)
                        .font(.title2)
                        .foregroundColor(.orange)
                }
                HStack{
                    Text(secilenKahraman.sehir).bold()
                    Spacer()
                    Text(secilenKahraman.meslek).bold()
                }
            }
            .padding()
            .offset(y:UIScreen.main.bounds.height * -0.40)
            
        }.offset(y:UIScreen.main.bounds.height * -0.09)
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenKahraman: spiderman)
    }
}
