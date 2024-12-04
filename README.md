# AlamofireExample
# SwiftUI + Alamofire API İstemcisi

Bu proje, SwiftUI ile oluşturulmuş ve Alamofire kütüphanesini kullanarak API isteklerini gerçekleştiren bir örnek uygulamadır. Alamofire, iOS uygulamalarında ağ iletişimini kolaylaştıran güçlü bir HTTP ağ kütüphanesidir.

---

## Gereksinimler

- [Alamofire](https://github.com/Alamofire/Alamofire) kütüphanesi

---

## Kurulum

1. **Proje Oluşturma ve Paket Yönetimi**

   Projenize Alamofire'ı eklemek için Swift Package Manager (SPM) kullanabilirsiniz:
   - Xcode menüsünden: `File > Add Packages > Add Package Dependency`.
   - Aşağıdaki URL'yi ekleyin:
     ```
     https://github.com/Alamofire/Alamofire
     ```

2. **Podfile ile Kurulum (CocoaPods)**
   
   Eğer CocoaPods kullanıyorsanız, projenizin `Podfile` dosyasına aşağıdaki satırı ekleyin:
   ```ruby
   pod 'Alamofire'
