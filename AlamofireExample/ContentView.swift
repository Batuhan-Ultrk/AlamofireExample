//
//  ContentView.swift
//  AlamofireExample
//
//  Created by Batuhan Ulutürk on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .onAppear {
//            let kdao = KisilerDao()
//            kdao.KisileriYukle()
//            kdao.kisiEkle(kisiAd: "Emre", kisiTel: "121212121000000000")
//            kdao.kisiGuncelle(kisiId: 17478, kisiAd: "EmreTest", kisiTel: "Testttt")
//            kdao.kisiSil(kisiId: 17478)
//            kdao.kisiAra(aramaKelimesi: "Kan")
            
//            let katdao = KategorilerDao()
//            katdao.kategorileriYukle()
            
            let fdao = FilmlerDao()
            
            fdao.FilmleriYukle()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
