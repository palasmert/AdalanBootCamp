//
//  KisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by mert palas on 14.03.2024.
//

import Foundation

class KisiKayitViewModel {
    var krepo = KisilerDaoRepo()
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        krepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
  

}
