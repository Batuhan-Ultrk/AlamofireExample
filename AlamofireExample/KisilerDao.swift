//
//  KisilerDao.swift
//  AlamofireExample
//
//  Created by Batuhan Ulutürk on 7.07.2024.
//

import Foundation
import Alamofire

class KisilerDao {
    func KisileriYukle(){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        
        AF.request(url, method: .get).response { response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    
                    if let liste = cevap.kisiler{
                        for i in liste {
                            print("-------------------KisileriYukle--------------------")
                            print("Kişi Ad : \(i.kisi_ad!)")
                            print("Kişi Tel : \(i.kisi_tel!)")
                            print("Kişi Id : \(i.kisi_id!)")
                        }
                    }
                    print("Sonuç: \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
        
    }
    
    func kisiEkle(kisiAd: String, kisiTel: String){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!
        let params: Parameters = ["kisi_ad": kisiAd, "kisi_tel": kisiTel]
        
        AF.request(url, method: .post, parameters: params ).response {reponse in
            if let data = reponse.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-------------------kisiEkle--------------------")

                    print("Message: \(cevap.message!)")
                    print("Success: \(cevap.success!)")
                    
                }catch{
                    print(error.localizedDescription)
                }
               
            }
        }
    }
    
    func kisiGuncelle(kisiId: Int, kisiAd: String, kisiTel: String){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!
        let params: Parameters = ["kisi_id": kisiId, "kisi_ad": kisiAd, "kisi_tel": kisiTel]
        
        AF.request(url,method: .post, parameters: params).response {response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-------------------kisiGuncelle--------------------")

                    print("Message: \(cevap.message!)")
                    print("Success: \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiSil(kisiId: Int){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!
        let params: Parameters = ["kisi_id": kisiId]
        
        AF.request(url, method: .post, parameters: params).response {response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(CRUDCevap.self, from: data)
                    print("-------------------kisiSil--------------------")

                    print("Message: \(cevap.message!)")
                    print("Success: \(cevap.success!)")
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func kisiAra(aramaKelimesi: String){
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!
        let params: Parameters = ["kisi_ad": aramaKelimesi]
        
        AF.request(url, method: .post, parameters: params).response{response in
            if let data = response.data{
                do{
                    let cevap = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    if let liste = cevap.kisiler{
                        for i in liste {
                            print("-------------------kisiAra--------------------")
                            print("Kişi Ad : \(i.kisi_ad!)")
                            print("Kişi Tel : \(i.kisi_tel!)")
                            print("Kişi Id : \(i.kisi_id!)")
                        }
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}
