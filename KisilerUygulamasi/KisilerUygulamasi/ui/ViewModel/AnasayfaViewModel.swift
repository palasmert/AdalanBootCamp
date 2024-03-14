//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by mert palas on 14.03.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {

    var krepo = KisilerDaoRepo()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value:  [Kisiler]())
    
    init() {
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
        
    }

    
    func siil(kisi_id:Int){
        krepo.siil(kisi_id: kisi_id)
    }
    func ara(aramaKelimesi:String) {
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}


