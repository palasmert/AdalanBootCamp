//
//  KisilerDaoRepo.swift
//  KisilerUygulamasi
//
//  Created by mert palas on 14.03.2024.
//

import Foundation
import RxSwift

class KisilerDaoRepo {
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value:  [Kisiler]())
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
    func guncelle(kisi_id: Int, kisi_ad:String,kisi_tel:String) {
        print("Kisi güncelle : \(kisi_id) -\(kisi_ad) - \(kisi_tel)")
    }
    func siil(kisi_id:Int){
     print("Kisi sil : \(kisi_id)")
        kisileriYukle()
        
    }
    func ara(aramaKelimesi:String) {
        print("Kişi ara: \(aramaKelimesi)")
    }
    func kisileriYukle(){
       var liste = [Kisiler]()
       let k1 = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "123321")
       let k2 = Kisiler(kisi_id: 2, kisi_ad: "beyza", kisi_tel: "222222")
       let k3 = Kisiler(kisi_id: 3, kisi_ad: "can", kisi_tel: "333333")
       liste.append(k1)
       liste.append(k2)
       liste.append(k3)
        kisilerListesi.onNext(liste)
    }
}
