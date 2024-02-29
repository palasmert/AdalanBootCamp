//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by mert palas on 27.02.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = kisi {
            print("kişi ad: \(k.ad!)")
            print("kişi yaş: \(k.yas!)")
            print("kişi boy: \(k.boy!)")
            print("kişi bekar: \(k.bekar!)")

            

        }
        
    }
    

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)

    }
    
    @IBAction func buttonGeri(_ sender: Any) {
      //  navigationController?.popViewController(animated: true) önceki sayfaya dönüş
        //navigationController?.popToRootViewController(animated: true)//anasayfaya dönüş
    }
}
