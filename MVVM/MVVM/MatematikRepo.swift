//
//  MatematikRepo.swift
//  MVVM
//
//  Created by mert palas on 14.03.2024.
//

import Foundation
import RxSwift

class MatematikRepo {
    var sonuc = BehaviorSubject<String>(value: "0")
    
    func toplamaYap(alinanSayi1:String, alinanSayi2:String){
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let toplam = sayi1 + sayi2
            sonuc.onNext(String(toplam))// tetitkleme
        }
    }
    
    func carpmaYap(alinanSayi1:String, alinanSayi2:String){
        if let sayi1 = Int(alinanSayi1), let sayi2 = Int(alinanSayi2) {
            let carpma = sayi1 * sayi2
            sonuc.onNext(String(carpma))//tetikleme
        }
    }
}
