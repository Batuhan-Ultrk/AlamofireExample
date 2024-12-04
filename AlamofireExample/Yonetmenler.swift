//
//  Yonetmenler.swift
//  AlamofireExample
//
//  Created by Batuhan Ulutürk on 7.07.2024.
//

import Foundation

class Yonetmenler : Codable {
    var yonetmen_id:String?
    var yonetmen_ad:String?
    
    init(){
        
    }
    
    init(yonetmen_id: String, yonetmen_ad: String) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}
