//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by mert palas on 5.03.2024.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiTel: UITextField!
    @IBOutlet weak var tfKisiAd: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text {
            kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }
    func kaydet(kisi_ad:String, kisi_tel:String){
        print("Kişi Kaydet : \(kisi_ad) - \(kisi_tel)")
    }
  

}
