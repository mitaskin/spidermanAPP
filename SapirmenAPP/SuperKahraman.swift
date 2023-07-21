//
//  SuperKahraman.swift
//  SapirmenAPP
//
//  Created by Muhammed ikbal TAŞKIN on 17.07.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Superkahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsım : String
    var gorselIsmi : String
    var sehir : String
    var meslek : String
    var koordinat : Koordinat
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }   
}

struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = Superkahraman(isim: "Batman", gercekIsım: "Bruce Gynome", gorselIsmi: "batman", sehir: "Gotham", meslek: "Amele", koordinat: Koordinat(latitude: 36.922416, longitude: 36.574888))

let ironman = Superkahraman(isim: "ironman", gercekIsım: "cemal süreyya", gorselIsmi: "ironman", sehir: "Kars", meslek: "Karpuzcu", koordinat:Koordinat(latitude: 37.020717, longitude: 36.628617))

let superman = Superkahraman(isim: "superman", gercekIsım: "kazım karabekir", gorselIsmi: "superman", sehir: "Gemlik", meslek: "sair", koordinat: Koordinat(latitude: 40.0, longitude: 40.0))

let spiderman = Superkahraman(isim: "spiderman", gercekIsım: "ali nail", gorselIsmi: "spiderman", sehir: "izmir", meslek: "hurdacı", koordinat: Koordinat(latitude: 50.0, longitude: 50.0))

let superKahramanDizisi = [batman,ironman,superman,spiderman]
