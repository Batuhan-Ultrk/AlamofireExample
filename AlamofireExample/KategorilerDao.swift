//
//  KategorilerDao.swift
//  AlamofireExample
//
//  Created by Batuhan Ulutürk on 7.07.2024.
//

import Foundation
import Alamofire

class KategorilerDao{
    
    func kategorileriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php")!
        
        AF.request(url, method: .get).response{response in
            
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(KategorilerCevap.self, from: data)
                    if let liste = cevap.kategoriler{
                        for i in liste{
                            print("-------------------kategorileriYukle--------------------")
                            print("Kategori Id: \(i.kategori_id!)")
                            print("Kategori Ad:\(i.kategori_ad!)")
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

