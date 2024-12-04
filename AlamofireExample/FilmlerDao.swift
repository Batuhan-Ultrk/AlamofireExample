//
//  FilmlerDao.swift
//  AlamofireExample
//
//  Created by Batuhan Ulutürk on 7.07.2024.
//

import Foundation
import Alamofire

class FilmlerDao{
    
    func FilmleriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_filmler.php")!
        
        AF.request(url, method: .get).response {repsonse in
            if let data = repsonse.data{
                do{
                    let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data)
                    
                    if let liste = cevap.filmler {
                        for i in liste {
                            print("-------------------FilmleriYukle--------------------")
                            print("Film Id : \(i.film_id!)")
                            print("Film Ad : \(i.film_ad!)")
                            print("Film Yıl : \(i.film_yil!)")
                            print("Film Resim : \(i.film_resim!)")
                            print("Film Kategori : \(i.kategori!.kategori_ad!)")
                            print("Film Yönetmen : \(i.yonetmen!.yonetmen_ad!)")
                        }
                    }
                    print("Success: \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
